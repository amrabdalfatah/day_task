import 'package:day_task_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String hint;
  final IconData prefixIcon;
  final bool isPassword;

  const TextInput({
    super.key,
    required this.hint,
    required this.prefixIcon,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      style: Theme.of(context).textTheme.labelLarge!.copyWith(
            color: Colors.white,
          ),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
              color: Colors.white,
            ),
        border: OutlineInputBorder(),
        fillColor: AppColors.fillTextFormColor,
        filled: true,
        prefixIcon: Icon(
          prefixIcon,
          color: Colors.white,
        ),
        suffixIcon: isPassword
            ? IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.visibility_off,
                  color: Colors.white,
                ),
              )
            : null,
      ),
    );
  }
}
