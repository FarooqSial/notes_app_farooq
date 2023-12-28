import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'Views/Screens/Screen_onbording1.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => Sizer(
        builder: (context, orientation, deviceType) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: ScreenOnBoarding(),
        ),
      );
}
