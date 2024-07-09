import 'package:day_task_app/utils/app_colors.dart';
import 'package:day_task_app/utils/images_string.dart';
import 'package:day_task_app/views/widgets/continue_with.dart';
import 'package:day_task_app/views/widgets/fields_entry.dart';
import 'package:day_task_app/views/widgets/main_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  SizedBox(
                    height: 20,
                  ),
                  FieldsEntry(),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: AppColors.labelTextFormColor,
                            ),
                      ),
                    ),
                  ),
                  MainButton(
                    textButton: 'Log In',
                    onPress: () {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ContinueWith(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
