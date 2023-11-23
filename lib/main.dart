import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:urgentvault/src/app/app.dart';
import 'package:urgentvault/src/core/themes/app_theme.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'src/core/injectors/injector.dart';
import 'src/core/widgets/adaptive_sizer_widget.dart';

void main() async {
  await configureInjection();
  await Hive.initFlutter();
  // Initialize Hive boxes if needed
  await openBoxes();
  runApp(const MyApp());
}

Future<void> openBoxes() async {
  await Hive.openBox('images');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return AdaptiveSizer(
      builder: (context) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          home: const SplashPage(),
        );
      },
    );
  }
}
