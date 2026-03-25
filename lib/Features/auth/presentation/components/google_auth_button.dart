import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/login/login_bloc.dart';
import 'package:heka_store/core/widgets/custom_button/custom_button.dart';
import 'package:heka_store/generated/l10n.dart';

class GoogleAuthButton extends StatelessWidget {
  const GoogleAuthButton({super.key});

  @override
  Widget build(BuildContext context) {
    final translate = S.of(context);
    return CustomButton.outlined(
      text: translate.signInWithGoogle,
      isLoading: false,
      onPressed: () => context.read<LoginBloc>().add(
        const LoginEvent.googleSignInSubmitted(),
      ),
      icon: const Icon(CupertinoIcons.person_crop_circle_badge_checkmark),
    );
  }
}
