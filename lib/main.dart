import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_app/screens/splash/splash_screen.dart';

import 'constants/app_constants.dart';
import 'constants/palette.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: kBackgroundColour,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ScreenUtilInit(
      designSize: const Size(414.0, 896.0),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (child, _) => MaterialApp(
        title: 'Ayomi',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Palette.kCustomColour,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: const Color(0xfffaf9f9),
          fontFamily: 'SF-Pro-Text',
          textTheme: TextTheme(
            bodyMedium: TextStyle(
              fontSize: 14.0.sp,
            ),
          ),
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
