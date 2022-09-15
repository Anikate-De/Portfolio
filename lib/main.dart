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
      title: appName,
      theme: ThemeData(
        primarySwatch: AppColors.shadowGrey,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeId,
      onGenerateRoute: (routeSettings) {
        switch (routeSettings.name) {
          case HomeScreen.routeId:
            return CustomPageRoute(
                child: HomeScreen(bgImg: routeSettings.arguments as Image?),
                settings: routeSettings);
          default:
            return MaterialPageRoute(
                builder: (context) => const SplashScreen(),
                settings: routeSettings);
        }
      },
    );
  }
}

class CustomPageRoute extends PageRouteBuilder {
  final Widget child;
  CustomPageRoute({required this.child, RouteSettings? settings})
      : super(
          transitionDuration: const Duration(milliseconds: 500),
          pageBuilder: (context, animation, secondaryAnimation) => child,
          settings: settings,
        );

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(
      opacity: animation,
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, 1),
          end: const Offset(0, 0),
        ).chain(CurveTween(curve: Curves.easeInOutQuart)).animate(animation),
        child: child,
      ),
    );
  }
}
