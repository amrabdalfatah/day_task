import 'package:day_task_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String textButton;
  final VoidCallback onPress;

  const MainButton({
    super.key,
    required this.textButton,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.mainColor,
          foregroundColor: Colors.black,
        ),
        child: Text(
          textButton,
        ),
      ),
    );
  }
}