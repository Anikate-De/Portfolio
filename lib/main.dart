import 'package:flutter/material.dart';
import 'package:portfolio/resources/resources.dart';
import 'package:portfolio/screens/screens.dart';
import 'package:portfolio/widgets/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: AppColors.shadowGrey,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeId,
      onGenerateRoute: (routeSettings) {
        switch (routeSettings.name) {
          case HomeScreen.routeId:
            return CustomPageRoute(
                child: const HomeScreen(), settings: routeSettings);
          default:
            return MaterialPageRoute(
                builder: (context) => const SplashScreen(),
                settings: routeSettings);
        }
      },
    );
  }
}
