import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:heka_store/Features/order/presentation/blocs/order/order_bloc.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/resources/app_text_styles.dart';
import 'package:heka_store/generated/l10n.dart';

class PaymentWebViewScreen extends StatefulWidget {
  final String paymentUrl;

  const PaymentWebViewScreen({super.key, required this.paymentUrl});

  @override
  State<PaymentWebViewScreen> createState() => _PaymentWebViewScreenState();
}

class _PaymentWebViewScreenState extends State<PaymentWebViewScreen>
    with SingleTickerProviderStateMixin {
  InAppWebViewController? _webViewController;
  bool _isLoading = true;
  int _loadingProgress = 0;
  bool _hasError = false;

  // Pulse animation for the lock icon while loading
  late final AnimationController _pulseCtrl;
  late final Animation<double> _pulseAnim;

  @override
  void initState() {
    super.initState();
    _pulseCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..repeat(reverse: true);
    _pulseAnim = Tween<double>(begin: 0.85, end: 1.0).animate(
      CurvedAnimation(parent: _pulseCtrl, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _pulseCtrl.dispose();
    super.dispose();
  }

  // ── Cancel ─────────────────────────────────────────────────────────────────
  void _cancel() {
    context.read<OrderBloc>().add(const OrderEvent.paymentCancelled());
    Navigator.of(context).pop();
  }

  // ── Confirm cancel with dialog ─────────────────────────────────────────────
  void _confirmCancel() {
    final s = S.of(context);
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.r16)),
        title: Text(s.paymentCancelDialogTitle),
        content: Text(s.paymentCancelDialogContent),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(s.paymentCancelDialogContinue),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(ctx);
              _cancel();
            },
            style: FilledButton.styleFrom(backgroundColor: Colors.red),
            child: Text(s.paymentCancelDialogConfirm),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;

    return PopScope(
      canPop: false, // always intercept — ask for confirmation
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) _confirmCancel();
      },
      child: Scaffold(
        backgroundColor: colors.background,
        appBar: _PaymentAppBar(
          isLoading: _isLoading,
          loadingProgress: _loadingProgress,
          pulseAnim: _pulseAnim,
          onClose: _confirmCancel,
        ),
        body: Stack(
          children: [
            // ── WebView ─────────────────────────────────────────────────
            InAppWebView(
              initialUrlRequest:
                  URLRequest(url: WebUri(widget.paymentUrl)),
              initialSettings: InAppWebViewSettings(
                useShouldOverrideUrlLoading: true,
                javaScriptEnabled: true,
                mediaPlaybackRequiresUserGesture: false,
              ),
              onWebViewCreated: (ctrl) => _webViewController = ctrl,

              onProgressChanged: (_, progress) {
                if (mounted) {
                  setState(() {
                    _loadingProgress = progress;
                    _isLoading = progress < 100;
                    if (progress == 100) _pulseCtrl.stop();
                  });
                }
              },

              // ── heka:// deep-link interception ───────────────────────
              shouldOverrideUrlLoading: (_, action) async {
                final url = action.request.url?.toString() ?? '';

                if (url.startsWith('heka://payment-success')) {
                  final uri = Uri.parse(url);
                  final orderNumber =
                      uri.queryParameters['order'] ?? '';
                  if (mounted) {
                    context.read<OrderBloc>().add(
                          OrderEvent.paymentSuccess(
                              orderNumber: orderNumber),
                        );
                    Navigator.of(context).pop();
                  }
                  return NavigationActionPolicy.CANCEL;
                }

                if (url.startsWith('heka://payment-failed') ||
                    url.startsWith('heka://payment-cancel')) {
                  if (mounted) {
                    context
                        .read<OrderBloc>()
                        .add(const OrderEvent.paymentCancelled());
                    Navigator.of(context).pop();
                  }
                  return NavigationActionPolicy.CANCEL;
                }

                return NavigationActionPolicy.ALLOW;
              },

              onReceivedError: (_, __, error) {
                if (mounted) setState(() => _hasError = true);
              },
            ),

            // ── Full-screen loading overlay (first paint) ───────────────
            if (_isLoading && _loadingProgress < 15)
              _LoadingOverlay(pulseAnim: _pulseAnim),

            // ── Error overlay ───────────────────────────────────────────
            if (_hasError)
              _ErrorOverlay(
                onRetry: () {
                  setState(() => _hasError = false);
                  _webViewController?.reload();
                },
                onCancel: _cancel,
              ),
          ],
        ),
      ),
    );
  }
}

// ── AppBar ────────────────────────────────────────────────────────────────────
class _PaymentAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isLoading;
  final int loadingProgress;
  final Animation<double> pulseAnim;
  final VoidCallback onClose;

  const _PaymentAppBar({
    required this.isLoading,
    required this.loadingProgress,
    required this.pulseAnim,
    required this.onClose,
  });

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight + 3); // +3 for progress bar

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;

    return AppBar(
      backgroundColor: colors.surface,
      elevation: 0,
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.w16),
        child: Row(
          children: [
            // Animated lock icon
            ScaleTransition(
              scale: isLoading ? pulseAnim : const AlwaysStoppedAnimation(1.0),
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: isLoading
                      ? Colors.orange.shade50
                      : Colors.green.shade50,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  isLoading
                      ? Icons.lock_clock_outlined
                      : Icons.lock_outline_rounded,
                  size: AppSizes.sp16,
                  color: isLoading
                      ? Colors.orange.shade600
                      : Colors.green.shade600,
                ),
              ),
            ),
            SizedBox(width: AppSizes.w8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    s.paymentWebViewTitle,
                    style: AppTextStyles.semiBold14
                        .copyWith(color: colors.textPrimary),
                  ),
                  Text(
                    isLoading
                        ? s.paymentWebViewConnecting
                        : s.paymentWebViewSecure,
                    style: AppTextStyles.regular11.copyWith(
                      color: isLoading
                          ? Colors.orange.shade600
                          : Colors.green.shade600,
                    ),
                  ),
                ],
              ),
            ),
            // Close button
            GestureDetector(
              onTap: onClose,
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: colors.surface,
                  shape: BoxShape.circle,
                  border: Border.all(color: colors.border),
                ),
                child: Icon(Icons.close_rounded,
                    size: AppSizes.sp16, color: colors.textHint),
              ),
            ),
          ],
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(3),
        child: AnimatedOpacity(
          opacity: isLoading ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 300),
          child: LinearProgressIndicator(
            value: loadingProgress / 100,
            minHeight: 3,
            backgroundColor: colors.border,
            valueColor: AlwaysStoppedAnimation<Color>(
              Colors.green.shade400,
            ),
          ),
        ),
      ),
    );
  }
}

// ── Initial loading overlay ───────────────────────────────────────────────────
class _LoadingOverlay extends StatelessWidget {
  final Animation<double> pulseAnim;
  const _LoadingOverlay({required this.pulseAnim});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;

    return Container(
      color: colors.background,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ScaleTransition(
              scale: pulseAnim,
              child: Container(
                width: 72,
                height: 72,
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  shape: BoxShape.circle,
                  border:
                      Border.all(color: Colors.green.shade200, width: 1.5),
                ),
                child: Icon(Icons.lock_outline_rounded,
                    color: Colors.green.shade500, size: 32),
              ),
            ),
            SizedBox(height: AppSizes.h20),
            Text(
              s.paymentWebViewConnecting,
              style: AppTextStyles.semiBold15
                  .copyWith(color: colors.textPrimary),
            ),
            SizedBox(height: AppSizes.h8),
            Text(
              s.paymentWebViewSecureNote,
              style: AppTextStyles.regular13
                  .copyWith(color: colors.textHint),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

// ── WebView error overlay ─────────────────────────────────────────────────────
class _ErrorOverlay extends StatelessWidget {
  final VoidCallback onRetry;
  final VoidCallback onCancel;
  const _ErrorOverlay({required this.onRetry, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colors = context.myColors;

    return Container(
      color: colors.background,
      padding: EdgeInsets.all(AppSizes.w32),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 72,
              height: 72,
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.red.shade200, width: 1.5),
              ),
              child: Icon(Icons.wifi_off_rounded,
                  color: Colors.red.shade400, size: 32),
            ),
            SizedBox(height: AppSizes.h20),
            Text(
              s.paymentWebViewLoadError,
              style: AppTextStyles.semiBold15
                  .copyWith(color: colors.textPrimary),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: AppSizes.h8),
            Text(
              s.paymentWebViewLoadErrorHint,
              style: AppTextStyles.regular13
                  .copyWith(color: colors.textHint),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: AppSizes.h28),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: FilledButton.icon(
                onPressed: onRetry,
                icon: const Icon(Icons.refresh_rounded, size: 18),
                label: Text(s.paymentWebViewRetry),
              ),
            ),
            SizedBox(height: AppSizes.h12),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: OutlinedButton(
                onPressed: onCancel,
                child: Text(s.paymentCancelDialogConfirm),
              ),
            ),
          ],
        ),
      ),
    );
  }
}