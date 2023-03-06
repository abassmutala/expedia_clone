import 'package:expedia_clone/constants/app_themes.dart';
import 'package:expedia_clone/views/welcome_view.dart';
import 'package:flutter/material.dart';

import 'managers/router.dart';
import 'services/navigation_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      navigatorKey: NavigationService().navigationKey,
      theme: expediaLightTheme,
      home: Welcome(),
    );
  }
}
