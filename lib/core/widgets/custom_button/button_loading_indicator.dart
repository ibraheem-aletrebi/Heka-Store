import 'package:flutter/cupertino.dart';
import 'package:heka_store/core/resources/app_sizes.dart';

class ButtonLoadingIndicator extends StatelessWidget {
  final Color color;

  const ButtonLoadingIndicator({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.h18,
      width: AppSizes.h18,
      child: CupertinoActivityIndicator(color: color),
    );
  }
}
