import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_app/portfolio_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // Use Figma design dimensions
      minTextAdapt: true, // Ensures text adapts to screen size
      splitScreenMode: true, // Allows split screen support
      builder: (context, child) {
        return MaterialApp(
          title: 'Portfolio App',
          theme: ThemeData(
            primarySwatch: Colors.orange,
            fontFamily: 'CustomFont', // Your custom font here
          ),
          home: child, // The child is set to PortfolioScreen
        );
      },
      child: PortfolioScreen(), // The child widget to display
    );
  }
}


