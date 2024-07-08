import 'package:day_task_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String textButton;
  final VoidCallback onPress;
  final Color? backColor;
  final Color? forColor;
  final BorderSide? border;

  const MainButton({
    super.key,
    required this.textButton,
    required this.onPress,
    this.backColor = AppColors.mainColor,
    this.forColor = Colors.black,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: backColor,
          foregroundColor: forColor,
          side: border,
        ),
        child: Text(
          textButton,
        ),
      ),
    );
  }
}
