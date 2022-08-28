import 'package:flutter/material.dart';
import 'package:hivley_app/widgets/auth/auth.dart';
import 'package:hivley_app/widgets/start_screen/start_screen_widget.dart';

import 'widgets/main_screen/main_screen_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: const Color(0xffff),
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: const Color(0xffff),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Color(0xffFFA410),
            unselectedItemColor: Colors.black,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
          )),
      routes: {
        '/start_screen': (context) => const StartScreen(),
        '/auth': (context) => const AuthWidget(),
        '/main_screen': (context) => const MainScreenWidget(),
      },
      initialRoute: '/start_screen',
    );
  }
}
