import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/forgot_password/forgot_password_bloc.dart';
import 'package:heka_store/Features/auth/presentation/components/forgot_password/reset_new_password/reset_new_password_view.dart';
import 'package:heka_store/Features/auth/presentation/components/forgot_password/reset_password_request/reset_password_request_view.dart';
import 'package:heka_store/Features/auth/presentation/components/forgot_password/reset_password_steps_indicator.dart';
import 'package:heka_store/Features/auth/presentation/components/forgot_password/verify_otp/reset_password_otp_view.dart';
import 'package:heka_store/core/extensions/media_query_extensions.dart';

class ForgotPasswordFlow extends StatefulWidget {
  const ForgotPasswordFlow({super.key});

  @override
  State<ForgotPasswordFlow> createState() => _ForgotPasswordFlowState();
}

class _ForgotPasswordFlowState extends State<ForgotPasswordFlow> {
  final PageController _pageController = PageController();

  final List<Widget> _steps = const [
    ResetPasswordRequestView(),
    ResetPasswordOtpView(),
    ResetNewPasswordView(),
  ];

  int get _numberOfSteps => _steps.length;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToPage(ForgotPasswordStep step) {
    _pageController.animateToPage(
      step.index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
      listenWhen: (previous, current) => previous.step != current.step,
      listener: (context, state) => _goToPage(state.step),
      child: BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
        buildWhen: (previous, current) => previous.step != current.step,
        builder: (context, state) {
          return Column(
            children: [
              SizedBox(height: context.height * 0.05),
              ResetPasswordStepsIndicator(
                currentStep: state.step.index,
                numberOfSteps: _numberOfSteps,
              ),
              SizedBox(height: context.height * 0.1),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _numberOfSteps,
                  itemBuilder: (context, index) => _steps[index],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
