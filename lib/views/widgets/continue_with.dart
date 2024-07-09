import 'package:day_task_app/utils/app_colors.dart';
import 'package:day_task_app/utils/app_routes.dart';
import 'package:flutter/material.dart';

import 'main_button.dart';

class ContinueWith extends StatelessWidget {
  final bool isRegisterScreen;
  const ContinueWith({
    super.key,
    this.isRegisterScreen = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 1,
                color: AppColors.labelTextFormColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: Text(
                'Or continue with',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: AppColors.labelTextFormColor,
                    ),
              ),
            ),
            Expanded(
              child: Divider(
                height: 1,
                thickness: 1,
                color: AppColors.labelTextFormColor,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        MainButton(
          textButton: 'Google',
          onPress: () {},
          backColor: AppColors.backgroundColor,
          forColor: Colors.white,
          border: BorderSide(
            color: Colors.white,
            width: 2,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isRegisterScreen
                  ? 'Already have an account?'
                  : 'Don\'t have an account?',
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: AppColors.labelTextFormColor,
                  ),
            ),
            TextButton(
              onPressed: () {
                isRegisterScreen
                    ? Navigator.pop(context)
                    : Navigator.pushNamed(
                        context,
                        AppRoutes.registerRoute,
                      );
              },
              child: Text(
                isRegisterScreen ? 'Log In' : 'Sign Up',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: AppColors.mainColor,
                    ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
