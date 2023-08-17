import 'package:demo_project/constants.dart';
import 'package:demo_project/dashboard_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(427, 784),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        title: 'Flutter Demo',
        theme: theme(),
        builder: (context, child) {
          return MediaQuery(data: MediaQuery.of(context), child: child!);
        },
        debugShowCheckedModeBanner: false,
        home: const DashboardPage(),
      ),
    );
  }
}

ThemeData theme() {
  return ThemeData(
    appBarTheme: appBarTheme(),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    elevation: 0,
    backgroundColor: white,
    iconTheme: IconThemeData(
      color: kTextColor,
    ),
  );
}
