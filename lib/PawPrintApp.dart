import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pawprint/Features/Home/home_page.dart';
import 'package:pawprint/Features/my_adoptions_page/my_adoptions_page.dart';
import 'package:pawprint/Features/not_found/not_fond_page.dart';
import 'package:pawprint/Features/settings_page/settings_page.dart';
import 'package:pawprint/splash/splash.dart';

class Pawprintapp extends StatelessWidget {
  const Pawprintapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "splash",
      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (context) => const NotFoundPage()),
      routes: {
        "/": (context) => const HomePage(),
        "splash": (context) => const SplashPage(),
        "myadoptions": (context) => const MyAdoptionsPage(),
        "settings": (context) => const SettingsPage(),
      },
      theme: ThemeData(
        listTileTheme: ListTileThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20),
          ),
          titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xff564339),
            fontSize: 18,
          ),
        ),
        chipTheme: ChipThemeData(
          side: const BorderSide(color: Color(0xfffdeae1)),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20),
          ),
          labelStyle: const TextStyle(
            color: Color(0xff564339),
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          backgroundColor: Color(0xfffdeae1),
        ),
      ),
      darkTheme: ThemeData(
        listTileTheme: ListTileThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20),
          ),
          titleTextStyle: TextStyle(
            color: Color(0xff564339),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        chipTheme: ChipThemeData(
          backgroundColor: Color(0xfffdeae1),
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20),
          ),
          labelStyle: TextStyle(
            fontSize: 14,
            color: Color(0xff564339),
            fontWeight: FontWeight.bold,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFFFF914D),
          primary: Color(0xFFFF914D),
          secondary: Color(0xff333333),
          brightness: Brightness.dark,
        ),
      ),
    );
  }
}
