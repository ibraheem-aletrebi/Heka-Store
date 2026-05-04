import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/core/animations/directional_reveal.dart';
import 'package:heka_store/core/animations/fade_scale_transition.dart';
import 'package:heka_store/core/animations/shimmer_overlay.dart';
import 'package:heka_store/core/app/router/app_router.dart';
import 'package:heka_store/core/resources/app_assets.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late String _letterAsset;
  late String _wordAsset;
  late bool _isRtl;

  late AnimationController _letterCtrl;
  late Animation<double> _letterFadeIn;
  late Animation<double> _letterScale;
  late Animation<double> _letterFadeOut;

  late AnimationController _breathCtrl;
  late Animation<double> _breathAnim;

  late AnimationController _shimmerCtrl;

  late AnimationController _wordCtrl;
  late Animation<double> _wordFade;
  late Animation<double> _wordReveal;

  late AnimationController _exitCtrl;
  late Animation<double> _exitFade;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final locale = Localizations.localeOf(context);
    _isRtl = locale.languageCode == 'ar';
    _letterAsset = _isRtl ? AppAssets.logoLetterAr : AppAssets.logoLetterEn;
    _wordAsset = _isRtl ? AppAssets.logoWordPngAr : AppAssets.logoWordPngEn;
    precacheImage(AssetImage(_letterAsset), context);
    precacheImage(AssetImage(_wordAsset), context);
  }

  @override
  void initState() {
    super.initState();
    _isRtl = false;
    _letterAsset = AppAssets.logoLetterEn;
    _wordAsset = AppAssets.logoWordPngEn;
    _initAnimations();
    _startAnimation();
  }

  void _initAnimations() {
    _letterCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );
    _letterFadeIn = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _letterCtrl,
        curve: const Interval(0.0, 0.50, curve: Curves.easeOut),
      ),
    );
    _letterScale = Tween(begin: 0.6, end: 1.0).animate(
      CurvedAnimation(
        parent: _letterCtrl,
        curve: const Interval(0.0, 0.60, curve: Curves.easeOutBack),
      ),
    );
    _letterFadeOut = Tween(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _letterCtrl,
        curve: const Interval(0.65, 1.0, curve: Curves.easeIn),
      ),
    );

    _breathCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    _breathAnim = Tween(
      begin: 1.0,
      end: 1.06,
    ).animate(CurvedAnimation(parent: _breathCtrl, curve: Curves.easeInOut));

    _shimmerCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    );

    _wordCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    _wordFade = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _wordCtrl,
        curve: const Interval(0.0, 0.35, curve: Curves.easeOut),
      ),
    );
    _wordReveal = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _wordCtrl, curve: Curves.easeOutCubic));

    _exitCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _exitFade = Tween(
      begin: 1.0,
      end: 0.0,
    ).animate(CurvedAnimation(parent: _exitCtrl, curve: Curves.easeIn));
  }

  Future<void> _startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 350));
    _shimmerCtrl.forward();
    _breathCtrl.repeat(reverse: true);
    await _letterCtrl.forward();
    _breathCtrl.stop();
    await _wordCtrl.forward();

    await Future.delayed(const Duration(milliseconds: 600));
    await _exitCtrl.forward();

    final route = await getInitialRoute();

    if (!mounted) return;

    if (mounted) context.go(route);
  }

  @override
  void dispose() {
    _letterCtrl.dispose();
    _breathCtrl.dispose();
    _shimmerCtrl.dispose();
    _wordCtrl.dispose();
    _exitCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: AnimatedBuilder(
        animation: _exitCtrl,
        builder: (_, child) => FadeTransition(opacity: _exitFade, child: child),
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              AnimatedBuilder(
                animation: Listenable.merge([
                  _letterCtrl,
                  _shimmerCtrl,
                  _breathCtrl,
                ]),
                builder: (_, _) {
                  final opacity = _letterCtrl.value < 0.65
                      ? _letterFadeIn.value
                      : _letterFadeOut.value;

                  return RepaintBoundary(
                    child: ShimmerOverlay(
                      progress: _shimmerCtrl.value,
                      child: FadeScaleTransition(
                        fadeAnim: AlwaysStoppedAnimation(opacity),
                        scaleAnim: AlwaysStoppedAnimation(
                          _letterScale.value * _breathAnim.value,
                        ),
                        child: Image.asset(_letterAsset, height: 90),
                      ),
                    ),
                  );
                },
              ),

              AnimatedBuilder(
                animation: _wordCtrl,
                builder: (_, _) => RepaintBoundary(
                  child: DirectionalReveal(
                    progress: _wordReveal.value,
                    isRtl: _isRtl,
                    child: Opacity(
                      opacity: _wordFade.value,
                      child: Image.asset(
                        _wordAsset,
                        height: AppSizes.h40,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
