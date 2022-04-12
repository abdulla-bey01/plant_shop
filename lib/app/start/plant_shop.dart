import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '/ui/screens/main_screen.dart';

class PlantShop extends StatelessWidget {
  const PlantShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375.0, 812.0),
      builder: () {
        return GetMaterialApp(
          routes: {
            MainScreen.route: (_) => const MainScreen(),
          },
          initialRoute: MainScreen.route,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
