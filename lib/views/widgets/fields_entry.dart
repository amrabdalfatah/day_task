import 'package:day_task_app/utils/app_colors.dart';
import 'package:day_task_app/utils/text_strings.dart';
import 'package:flutter/material.dart';

import 'text_input.dart';

class FieldsEntry extends StatelessWidget {
  final bool isRegisterScreen;
  const FieldsEntry({
    super.key,
    this.isRegisterScreen = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          isRegisterScreen
              ? TextStrings.createAccount
              : TextStrings.welcomeBackText,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
        if (isRegisterScreen)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Full Name',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: AppColors.labelTextFormColor,
                    ),
              ),
              SizedBox(
                height: 10,
              ),
              TextInput(
                hint: 'Enter your Full Name',
                prefixIcon: Icons.person,
              ),
            ],
          ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Email Address',
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: AppColors.labelTextFormColor,
              ),
        ),
        SizedBox(
          height: 10,
        ),
        TextInput(
          hint: 'Enter your Email',
          prefixIcon: Icons.email,
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'Passwords',
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: AppColors.labelTextFormColor,
              ),
        ),
        SizedBox(
          height: 10,
        ),
        TextInput(
          hint: 'Enter your Password',
          prefixIcon: Icons.lock,
          isPassword: true,
        ),
      ],
    );
  }
}
