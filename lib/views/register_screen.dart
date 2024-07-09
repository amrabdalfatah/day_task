import 'package:day_task_app/utils/app_colors.dart';
import 'package:day_task_app/utils/images_string.dart';
import 'package:day_task_app/views/widgets/continue_with.dart';
import 'package:day_task_app/views/widgets/fields_entry.dart';
import 'package:day_task_app/views/widgets/main_button.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                children: [
                  Image.asset(
                    ImagesString.logo,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const FieldsEntry(
                    isRegisterScreen: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                        checkColor: AppColors.backgroundColor,
                        fillColor: const WidgetStatePropertyAll(
                          AppColors.mainColor,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'I have read & agreed to DayTask Privacy Policy, Terms & Condition',
                          maxLines: 2,
                          style:
                              Theme.of(context).textTheme.labelLarge!.copyWith(
                                    color: AppColors.labelTextFormColor,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MainButton(
                    textButton: 'Sign Up',
                    onPress: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ContinueWith(
                    isRegisterScreen: true,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
