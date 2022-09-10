import 'package:flutter/material.dart';
import 'package:hivley_app/all_cards_widget/details_widget/feature_details.dart';
import 'package:hivley_app/colors/colors.dart';
import 'package:hivley_app/test.dart';

import 'package:hivley_app/widgets/auth/auth.dart';
import 'package:hivley_app/widgets/start_screen/start_screen_widget.dart';
import 'all_cards_widget/feature_all.dart';
import 'all_cards_widget/graphics_all.dart';
import 'all_cards_widget/hobbies_all.dart';
import 'colors/colors.dart';
import 'widgets/main_screen/main_screen_widget.dart';
import 'all_cards_widget/details_widget/feature_details.dart';

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
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: buttonOrange,
            unselectedItemColor: Colors.black,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
          )),
      routes: {
        '/start_screen': (context) => const StartScreen(),
        '/auth': (context) => const AuthWidget(),
        '/main_screen': (context) => const MainScreenWidget(),
        '/test': (context) => Test(),
        '/feature_all': (context) => SeeAllListFeatured(),
        '/graphics_all': (context) => SeeAllListGraphics(),
        '/hobbies_all': (context) => SeeAllListHobbies(),
        '/feature_details': (context) => FeatureDetails(),
      },
      initialRoute: '/start_screen',
    );
  }
}
