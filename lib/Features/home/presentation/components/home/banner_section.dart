import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/home/presentation/blocs/bloc/home_bloc.dart';
import 'package:heka_store/Features/home/presentation/components/home/banner_item.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_skeletonizer.dart';

class BannerSection extends StatefulWidget {
  const BannerSection({super.key});

  @override
  State<BannerSection> createState() => _BannerSectionState();
}

class _BannerSectionState extends State<BannerSection> {
  final _controller = PageController();
  int _current = 0;
  Timer? _timer;
  int _bannerCount = 0;

  static const _fallbackBanners = [
    BannerData(
      title: 'New Arrivals',
      subtitle: 'Up to 40% off on latest styles',
      gradient: [Color(0xFFFFF3E8), Color(0xFFFFE4C8)],
      accent: Color(0xFFF17300),
    ),
    BannerData(
      title: 'Summer Sale',
      subtitle: 'Exclusive deals just for you',
      gradient: [Color(0xFFE8F4FF), Color(0xFFC8E4FF)],
      accent: Color(0xFF2E7FDE),
    ),
    BannerData(
      title: 'Top Brands',
      subtitle: 'Nike, Adidas, Bata & more',
      gradient: [Color(0xFFF3E8FF), Color(0xFFE4C8FF)],
      accent: Color(0xFF8B3FDE),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _bannerCount = _fallbackBanners.length;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startTimer(_bannerCount);
    });
  }

  void _startTimer(int count) {
    _timer?.cancel();
    if (count <= 1) return;
    _bannerCount = count;
    _timer = Timer.periodic(const Duration(seconds: 4), (_) {
      if (!mounted || !_controller.hasClients) return;
      final next = (_current + 1) % count;
      _controller.animateToPage(
        next,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listenWhen: (previous, current) =>
          previous.banners != current.banners ||
          previous.isBannersLoading != current.isBannersLoading,
      listener: (context, state) {
        if (!state.isBannersLoading) {
          final count = state.banners.isNotEmpty
              ? state.banners.length
              : _fallbackBanners.length;
          _startTimer(count);
        }
      },
      buildWhen: (previous, current) =>
          previous.banners != current.banners ||
          previous.isBannersLoading != current.isBannersLoading,
      builder: (context, state) {
        // ─── Loading ──────────────────────────────────
        if (state.isBannersLoading) {
          return CustomSkeletonizer(enable: true, child: _BannerPlaceholder());
        }

        final hasApiData = state.banners.isNotEmpty;
        final count = hasApiData
            ? state.banners.length
            : _fallbackBanners.length;

        return Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.25,
              child: PageView.builder(
                controller: _controller,
                onPageChanged: (i) => setState(() => _current = i),
                itemCount: count,
                itemBuilder: (_, i) => BannerItem(data: _fallbackBanners[i]),
              ),
            ),
            SizedBox(height: AppSizes.h12),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                count,
                (i) => AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  width: _current == i ? 20 : 6,
                  height: 6,
                  decoration: BoxDecoration(
                    color: _current == i
                        ? context.myColors.primary
                        : context.myColors.primary.withValues(alpha: 0.25),
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}


class _BannerPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.sizeOf(context).height * 0.25,
          decoration: BoxDecoration(
            color: context.myColors.surface,
            borderRadius: BorderRadius.circular(AppSizes.r20),
          ),
        ),
        SizedBox(height: AppSizes.h12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            3,
            (i) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 3),
              width: i == 0 ? 20 : 6,
              height: 6,
              decoration: BoxDecoration(
                color: context.myColors.surface,
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


class BannerData {
  final String title, subtitle;
  final List<Color> gradient;
  final Color accent;

  const BannerData({
    required this.title,
    required this.subtitle,
    required this.gradient,
    required this.accent,
  });
}
