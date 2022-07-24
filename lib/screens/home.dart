import 'package:flutter/material.dart';
import 'package:portfolio/resources/resources.dart';

class HomeScreen extends StatefulWidget {
  static const String routeId = 'home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.shadowGrey.shade500,
    );
  }
}
