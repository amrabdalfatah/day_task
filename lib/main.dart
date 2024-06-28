import 'package:day_task_app/utils/app_colors.dart';
import 'package:day_task_app/utils/app_routes.dart';
import 'package:day_task_app/utils/text_strings.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: TextStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backgroundColor,
        useMaterial3: false,
      ),
      initialRoute: AppRoutes.splashRoute,
      onGenerateRoute: AppRoutes.generateRoutes,
    );
  }
}
