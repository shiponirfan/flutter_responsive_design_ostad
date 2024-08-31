import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.primaryColor),
        shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
        padding: const WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 50, vertical: 20)),
      ),
      onPressed: () {},
      child: const Text(
        'Join course',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
