import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/core/widgets/custom_cached_network_image.dart';

class UserAvatar extends StatelessWidget {
  final String? imageUrl;
  final String? name;
  final double? size;
  final VoidCallback? onTap;

  const UserAvatar({
    super.key,
    this.imageUrl,
    this.name,
    this.size,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final c = context.myColors;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size ?? AppSizes.w45,
        height: size ?? AppSizes.w45,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: c.primary.withValues(alpha: 0.25),
            width: 2,
          ),
        ),
        child: ClipOval(child: _buildContent(context)),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    if (imageUrl != null) {
      return CachedImage(
        url: imageUrl,
        fallback: (name != null)
            ? Text(name!, style: AppTextStyles.regular14)
            : null,
      );
    }
    if (name != null) return _Initials(name: name!);
    return const _GuestIcon();
  }
}

class _Initials extends StatelessWidget {
  final String name;
  const _Initials({required this.name});

  String get _initials {
    final parts = name.trim().split(' ');
    if (parts.length >= 2) return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
    return parts[0][0].toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    final c = context.myColors;
    return Container(
      color: c.primarySoft,
      child: Center(
        child: Text(
          _initials,
          style: AppTextStyles.bold14.copyWith(color: c.primary),
        ),
      ),
    );
  }
}

class _GuestIcon extends StatelessWidget {
  const _GuestIcon();

  @override
  Widget build(BuildContext context) {
    final c = context.myColors;
    return Container(
      color: c.surface,
      child: Icon(
        Icons.person_outline_rounded,
        color: c.textSecondary,
        size: 24,
      ),
    );
  }
}
