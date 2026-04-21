import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heka_store/Features/account/presentation/components/account/menu_item.dart';
import 'package:heka_store/Features/auth/presentation/blocs/delete_account/delete_account_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/logout/logout_bloc.dart';
import 'package:heka_store/core/app/router/app_routes.dart';
import 'package:heka_store/core/blocs/language/language_bloc.dart';
import 'package:heka_store/core/blocs/theme/theme_bloc.dart';
import 'package:heka_store/core/enums/app_theme_mode_enum.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/generated/l10n.dart';
import 'package:heka_store/main.dart'; // navigatorKey

class SliverMenu extends StatefulWidget {
  const SliverMenu({super.key});

  @override
  State<SliverMenu> createState() => _SliverMenuState();
}

class _SliverMenuState extends State<SliverMenu> {
  // Track whether the password confirm dialog is currently open
  bool _isPasswordDialogOpen = false;

  // ─── Language Flow ────────────────────────────────────────────────────────────
  void _showChangeLanguageSheet() {
    final currentLocale = context.read<LanguageBloc>().state.languageCode;

    showModalBottomSheet(
      context: context,
      backgroundColor: context.myColors.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(AppSizes.r20)),
      ),
      builder: (ctx) {
        final s = S.of(ctx);
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.w16,
            vertical: AppSizes.h24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: AppSizes.w40,
                  height: AppSizes.h4,
                  decoration: BoxDecoration(
                    color: ctx.myColors.border,
                    borderRadius: BorderRadius.circular(AppSizes.r4),
                  ),
                ),
              ),
              SizedBox(height: AppSizes.h16),
              Text(s.chooseLanguage, style: Theme.of(ctx).textTheme.titleLarge),
              SizedBox(height: AppSizes.h12),
              _LanguageTile(
                flag: '🇺🇸',
                language: s.languageEnglish,
                languageCode: 'en',
                isSelected: currentLocale == 'en',
                onTap: () {
                  context.read<LanguageBloc>().add(
                    const LanguageChanged(langCode: 'en'),
                  );
                  Navigator.pop(ctx);
                },
              ),
              Divider(color: ctx.myColors.divider, height: 0, thickness: 0.5),
              _LanguageTile(
                flag: '🇸🇦',
                language: s.languageArabic,
                languageCode: 'ar',
                isSelected: currentLocale == 'ar',
                onTap: () {
                  context.read<LanguageBloc>().add(
                    const LanguageChanged(langCode: 'ar'),
                  );
                  Navigator.pop(ctx);
                },
              ),
              SizedBox(height: AppSizes.h8),
            ],
          ),
        );
      },
    );
  }

  // ─── Theme Flow ───────────────────────────────────────────────────────────────
  void _showChangeThemeSheet() {
    final currentMode = context.read<ThemeBloc>().state.themeMode;

    showModalBottomSheet(
      context: context,
      backgroundColor: context.myColors.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(AppSizes.r20)),
      ),
      builder: (ctx) {
        final s = S.of(ctx);
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.w16,
            vertical: AppSizes.h24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: AppSizes.w40,
                height: AppSizes.h4,
                decoration: BoxDecoration(
                  color: ctx.myColors.border,
                  borderRadius: BorderRadius.circular(AppSizes.r4),
                ),
              ),
              SizedBox(height: AppSizes.h16),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  s.chooseTheme,
                  style: Theme.of(ctx).textTheme.titleLarge,
                ),
              ),
              SizedBox(height: AppSizes.h12),
              _ThemeTile(
                icon: Icons.wb_sunny_outlined,
                label: s.themeLight,
                isSelected: currentMode == AppThemeModeEnum.light,
                onTap: () {
                  context.read<ThemeBloc>().add(
                    const ThemeChanged(AppThemeModeEnum.light),
                  );
                  Navigator.pop(ctx);
                },
              ),
              Divider(color: ctx.myColors.divider, height: 0, thickness: 0.5),
              _ThemeTile(
                icon: Icons.nightlight_round,
                label: s.themeDark,
                isSelected: currentMode == AppThemeModeEnum.dark,
                onTap: () {
                  context.read<ThemeBloc>().add(
                    const ThemeChanged(AppThemeModeEnum.dark),
                  );
                  Navigator.pop(ctx);
                },
              ),
              Divider(color: ctx.myColors.divider, height: 0, thickness: 0.5),
              _ThemeTile(
                icon: Icons.phone_android_outlined,
                label: s.themeSystemDefault,
                isSelected: currentMode == AppThemeModeEnum.system,
                onTap: () {
                  context.read<ThemeBloc>().add(
                    const ThemeChanged(AppThemeModeEnum.system),
                  );
                  Navigator.pop(ctx);
                },
              ),
              SizedBox(height: AppSizes.h8),
            ],
          ),
        );
      },
    );
  }

  // ─── Delete Account Flow ──────────────────────────────────────────────────────
  // Step 1 — warn the user
  void _showDeleteAccountDialog() {
    final s = S.of(context);
    // FIX: Capture theme colors before entering dialog builder to avoid
    // referencing the outer `context` after potential unmount.
    final surfaceColor = context.myColors.surface;
    final bodyMediumStyle = Theme.of(context).textTheme.bodyMedium;
    final titleMediumStyle = Theme.of(context).textTheme.titleMedium;

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: surfaceColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.r16),
        ),
        title: Row(
          children: [
            Icon(
              Icons.warning_amber_rounded,
              color: Colors.red,
              size: AppSizes.w24,
            ),
            SizedBox(width: AppSizes.w8),
            Text(
              s.deleteAccountTitle,
              style: titleMediumStyle?.copyWith(color: Colors.red),
            ),
          ],
        ),
        content: Text(
          s.deleteAccountMessage,
          style: bodyMediumStyle,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(s.cancel),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizes.r8),
              ),
            ),
            onPressed: () {
              Navigator.pop(ctx);
              _showPasswordConfirmDialog();
            },
            child: Text(s.continueLabel),
          ),
        ],
      ),
    );
  }

  // Step 2 — collect password and fire bloc
  void _showPasswordConfirmDialog() {
    final s = S.of(context);

    // FIX: Capture the bloc BEFORE showDialog() — the dialog's BuildContext
    // is NOT a descendant of any BlocProvider, so context.read() inside throws.
    final deleteBloc = context.read<DeleteAccountBloc>();

    // FIX: Capture theme/color values before entering the dialog builder
    // so we never reference the outer `context` after a potential unmount.
    final surfaceColor = context.myColors.surface;
    final bodyMediumStyle = Theme.of(context).textTheme.bodyMedium;
    final titleMediumStyle = Theme.of(context).textTheme.titleMedium;

    final passwordController = TextEditingController();

    _isPasswordDialogOpen = true;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) {
        bool obscure = true;
        bool isLoading = false;

        return StatefulBuilder(
          builder: (ctx, setDialogState) => AlertDialog(
            backgroundColor: surfaceColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizes.r16),
            ),
            title: Row(
              children: [
                Icon(Icons.lock_outline, color: Colors.red, size: AppSizes.w24),
                SizedBox(width: AppSizes.w8),
                Text(
                  s.deleteAccountConfirmPasswordTitle,
                  style: titleMediumStyle?.copyWith(color: Colors.red),
                ),
              ],
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  s.deleteAccountConfirmPasswordSubtitle,
                  style: bodyMediumStyle,
                ),
                SizedBox(height: AppSizes.h16),
                TextField(
                  controller: passwordController,
                  obscureText: obscure,
                  autofocus: true,
                  enabled: !isLoading,
                  decoration: InputDecoration(
                    labelText: s.password,
                    labelStyle: const TextStyle(color: Colors.red),
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                      color: Colors.red,
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red.shade200),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red.shade100),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        obscure
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Colors.red,
                      ),
                      onPressed: isLoading
                          ? null
                          : () => setDialogState(() => obscure = !obscure),
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: isLoading
                    ? null
                    : () {
                        _isPasswordDialogOpen = false;
                        Navigator.pop(ctx);
                      },
                child: Text(s.cancel),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSizes.r8),
                  ),
                ),
                onPressed: isLoading
                    ? null
                    : () {
                        final password = passwordController.text.trim();
                        if (password.isEmpty) return;
                        // Guard: ignore if already processing to prevent
                        // multiple events from rapid taps or dialog rebuilds.
                        if (deleteBloc.state is DeleteAccountLoading) return;
                        setDialogState(() => isLoading = true);
                        deleteBloc.add(
                          DeleteAccountRequested(password: password),
                        );
                        // Navigation is handled by BlocListener in build()
                      },
                child: isLoading
                    ? SizedBox(
                        width: AppSizes.w16,
                        height: AppSizes.w16,
                        child: const CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                    : Text(s.deleteAccountConfirm),
              ),
            ],
          ),
        );
      },
    ).then((_) {
      _isPasswordDialogOpen = false;
      passwordController.dispose();
    });
  }

  // ─── Logout Flow ──────────────────────────────────────────────────────────────
  void _showLogoutDialog() {
    final s = S.of(context);

    // FIX: Capture the bloc BEFORE showDialog() — same reason as deleteBloc above.
    final logoutBloc = context.read<LogoutBloc>();

    // FIX: Capture theme/color values before entering the dialog builder.
    final surfaceColor = context.myColors.surface;
    final secondaryColor = context.myColors.secondary;
    final bodyMediumStyle = Theme.of(context).textTheme.bodyMedium;
    final titleMediumStyle = Theme.of(context).textTheme.titleMedium;

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: surfaceColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.r16),
        ),
        title: Row(
          children: [
            Icon(
              Icons.logout,
              color: secondaryColor,
              size: AppSizes.w24,
            ),
            SizedBox(width: AppSizes.w8),
            Text(s.logOutTitle, style: titleMediumStyle),
          ],
        ),
        content: Text(
          s.logOutMessage,
          style: bodyMediumStyle,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(s.cancel),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: secondaryColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizes.r8),
              ),
            ),
            onPressed: () {
              Navigator.pop(ctx);
              logoutBloc.add(const LogoutRequested());
            },
            child: Text(s.logOutConfirm),
          ),
        ],
      ),
    );
  }

  // ─── Menu Items ───────────────────────────────────────────────────────────────
  List<Widget> _buildMenuItems(S s) => [
    MenuItem(
      icon: Icons.shopping_bag_outlined,
      label: s.menuMyOrders,
      onTap: () => context.push(AppRoutes.myOrders),
    ),
    MenuItem(
      icon: Icons.home_outlined,
      label: s.menuAddressBook,
      onTap: () => context.push(AppRoutes.addresses),
    ),
    MenuItem(
      icon: Icons.language_outlined,
      label: s.menuChangeLanguage,
      onTap: _showChangeLanguageSheet,
    ),
    MenuItem(
      icon: Icons.brightness_6_outlined,
      label: s.menuTheme,
      onTap: _showChangeThemeSheet,
    ),
    MenuItem(
      icon: Icons.delete_outline,
      label: s.menuDeleteAccount,
      iconColor: Colors.red,
      textColor: Colors.red,
      onTap: _showDeleteAccountDialog,
    ),
    MenuItem(
      icon: Icons.logout,
      iconColor: Colors.red,
      textColor: Colors.red,
      label: s.menuLogOut,
      onTap: _showLogoutDialog,
    ),
  ];

  // ─── Build ────────────────────────────────────────────────────────────────────
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<LogoutBloc, LogoutState>(
          listener: (context, state) {
            if (state is LogoutSuccess) {
              // Use navigatorKey.currentContext so GoRouter is always reachable,
              // regardless of how deeply nested this widget is in the tree.
              navigatorKey.currentContext?.go(AppRoutes.login);
            } else if (state is LogoutFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                  backgroundColor: context.myColors.error,
                ),
              );
            }
          },
        ),
        BlocListener<DeleteAccountBloc, DeleteAccountState>(
          listener: (context, state) {
            if (state is DeleteAccountSuccess) {
              _isPasswordDialogOpen = false;
              // Do NOT pop the dialog manually before go(). The go() call
              // replaces the entire navigator stack and closes all dialogs
              // automatically. Popping first disposes the TextField controller
              // mid-frame, which causes a 'used after dispose' crash.
              navigatorKey.currentContext?.go(AppRoutes.login);
            } else if (state is DeleteAccountFailure) {
              // On failure we are NOT navigating away, so pop the dialog
              // explicitly here — safe because the stack is not being replaced.
              if (_isPasswordDialogOpen) {
                _isPasswordDialogOpen = false;
                Navigator.of(context, rootNavigator: true).pop();
              }
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.error.serverMessage ?? ''),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
        ),
      ],
      child: BlocBuilder<LanguageBloc, LanguageState>(
        builder: (ctx, _) {
          final s = S.of(ctx);
          final items = _buildMenuItems(s);
          return SliverList.separated(
            itemCount: items.length,
            itemBuilder: (_, index) => items[index],
            separatorBuilder: (_, __) =>
                Divider(height: 0, thickness: 0.5, color: ctx.myColors.divider),
          );
        },
      ),
    );
  }
}

// ─── _LanguageTile ────────────────────────────────────────────────────────────

class _LanguageTile extends StatelessWidget {
  const _LanguageTile({
    required this.flag,
    required this.language,
    required this.languageCode,
    required this.onTap,
    this.isSelected = false,
  });

  final String flag;
  final String language;
  final String languageCode;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: AppSizes.w8),
      leading: Text(flag, style: TextStyle(fontSize: AppSizes.sp24)),
      title: Text(language, style: Theme.of(context).textTheme.bodyLarge),
      trailing: isSelected
          ? Icon(
              Icons.check_circle,
              color: context.myColors.primary,
              size: AppSizes.w24,
            )
          : Icon(
              Icons.circle_outlined,
              color: context.myColors.border,
              size: AppSizes.w24,
            ),
      onTap: onTap,
    );
  }
}

// ─── _ThemeTile ───────────────────────────────────────────────────────────────

class _ThemeTile extends StatelessWidget {
  const _ThemeTile({
    required this.icon,
    required this.label,
    required this.onTap,
    this.isSelected = false,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: AppSizes.w8),
      leading: Container(
        width: AppSizes.w40,
        height: AppSizes.w40,
        decoration: BoxDecoration(
          color: isSelected
              ? context.myColors.primarySoft
              : context.myColors.background,
          borderRadius: BorderRadius.circular(AppSizes.r10),
          border: Border.all(
            color: isSelected
                ? context.myColors.primary
                : context.myColors.border,
          ),
        ),
        child: Icon(
          icon,
          color: isSelected
              ? context.myColors.primary
              : context.myColors.textSecondary,
          size: AppSizes.w20,
        ),
      ),
      title: Text(label, style: Theme.of(context).textTheme.bodyLarge),
      trailing: isSelected
          ? Icon(
              Icons.check_circle,
              color: context.myColors.primary,
              size: AppSizes.w24,
            )
          : null,
      onTap: onTap,
    );
  }
}