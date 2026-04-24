import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/notifications/presentation/bloc/notification_bloc.dart';
import 'package:heka_store/Features/notifications/presentation/bloc/notification_event.dart';
import 'package:heka_store/Features/notifications/presentation/bloc/notification_state.dart';
import 'package:heka_store/Features/notifications/presentation/pages/notifications_page.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/widgets/custom_icon_button.dart';

class NotificationButton extends StatefulWidget {
  const NotificationButton({super.key});

  @override
  State<NotificationButton> createState() => _NotificationButtonState();
}

class _NotificationButtonState extends State<NotificationButton>
    with TickerProviderStateMixin {
  // 1. Pulse ring animation
  late final AnimationController _pulseController;
  late final Animation<double> _pulseScale;
  late final Animation<double> _pulseOpacity;

  // 2. Bell shake animation
  late final AnimationController _shakeController;
  late final Animation<double> _shakeAngle;

  int _previousCount = 0;

  @override
  void initState() {
    super.initState();

    // Pulse ring — repeats forever while badge is visible
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1800),
    )..repeat();

    _pulseScale = Tween(
      begin: 1.0,
      end: 2.4,
    ).animate(CurvedAnimation(parent: _pulseController, curve: Curves.easeOut));
    _pulseOpacity = Tween(
      begin: 0.6,
      end: 0.0,
    ).animate(CurvedAnimation(parent: _pulseController, curve: Curves.easeOut));

    // Bell shake — plays once on new notification
    _shakeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 550),
    );
    _shakeAngle = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 0.0, end: 14.0), weight: 15),
      TweenSequenceItem(tween: Tween(begin: 14.0, end: -12.0), weight: 15),
      TweenSequenceItem(tween: Tween(begin: -12.0, end: 10.0), weight: 15),
      TweenSequenceItem(tween: Tween(begin: 10.0, end: -8.0), weight: 15),
      TweenSequenceItem(tween: Tween(begin: -8.0, end: 5.0), weight: 15),
      TweenSequenceItem(tween: Tween(begin: 5.0, end: -3.0), weight: 15),
      TweenSequenceItem(tween: Tween(begin: -3.0, end: 0.0), weight: 10),
    ]).animate(_shakeController);
  }

  @override
  void dispose() {
    _pulseController.dispose();
    _shakeController.dispose();
    super.dispose();
  }

  void _onNewNotification(int newCount) {
    if (newCount > _previousCount) {
      // Reset + replay both bell and badge animations
      _shakeController.forward(from: 0);
    }
    if (newCount > 0 && !_pulseController.isAnimating) {
      _pulseController.repeat();
    } else if (newCount == 0) {
      _pulseController.stop();
    }
    _previousCount = newCount;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationBloc, NotificationState>(
      builder: (context, state) {
        final int unreadCount = (state is NotificationLoaded)
            ? state.unreadCount
            : 0;

        // Trigger animations when count changes
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _onNewNotification(unreadCount);
        });

        return Stack(
          alignment: Alignment.center,
          children: [
            // Bell shake
            AnimatedBuilder(
              animation: _shakeAngle,
              builder: (context, child) {
                return Transform.rotate(
                  angle: _shakeAngle.value * (3.14159 / 180),
                  child: child,
                );
              },
              child: CustomIconButton(
                icon: Icons.notifications_none_rounded,
                onPressed: () => _navigateToNotifications(context),
              ),
            ),

            if (unreadCount > 0) ...[
              // Pulse ring behind badge
              Positioned(
                top: 10,
                right: 10,
                child: AnimatedBuilder(
                  animation: _pulseController,
                  builder: (context, _) {
                    return Transform.scale(
                      scale: _pulseScale.value,
                      child: Opacity(
                        opacity: _pulseOpacity.value,
                        child: Container(
                          width: 14,
                          height: 14,
                          decoration: BoxDecoration(
                            color: context.myColors.primary,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ],
        );
      },
    );
  }

  void _navigateToNotifications(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (innerContext) => BlocProvider.value(
          value: context.read<NotificationBloc>(),
          child: const NotificationsPage(),
        ),
      ),
    ).then((_) {
      if (context.mounted) {
        context.read<NotificationBloc>().add(const LoadUnreadCountEvent());
      }
    });
  }
}
