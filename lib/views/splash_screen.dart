import 'package:day_task_app/utils/app_colors.dart';
import 'package:day_task_app/utils/app_routes.dart';
import 'package:day_task_app/utils/images_string.dart';
import 'package:day_task_app/utils/text_strings.dart';
import 'package:flutter/material.dart';

import 'widgets/main_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                ImagesString.logo,
                height: 70,
              ),
              DecoratedBox(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Image.asset(
                  ImagesString.splash,
                  height: 320,
                ),
              ),
              Text(
                TextStrings.splashText,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: Colors.white,
                    ),
              ),
              Text(
                TextStrings.appName,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: AppColors.mainColor,
                    ),
              ),
              MainButton(
                textButton: TextStrings.splashButtonText,
                onPress: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.loginRoute,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
