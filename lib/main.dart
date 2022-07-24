import 'package:flutter/material.dart';
import 'package:portfolio/resources/resources.dart';
import 'package:portfolio/screens/screens.dart';

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
      initialRoute: HomeScreen.routeId,
      routes: {
        HomeScreen.routeId: (context) => const HomeScreen(),
      },
    );
  }
}
