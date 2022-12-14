import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hivley_app/textstyles/text.dart';
import 'package:hivley_app/widgets/home_widgets/home_screen_widgets.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int currentIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeWidgetListView(),
    Text(
      'Index 1: Search',
      style: TextStyle(color: Colors.amber),
    ),
    Text(
      'Index 2: Create',
      style: TextStyle(color: Colors.amber),
    ),
  ];

  void onSelectedTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[currentIndex]),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        child: BottomNavigationBar(
          iconSize: 24,
          selectedLabelStyle: bottomNavBarItems,
          unselectedLabelStyle: bottomNavBarItems,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          currentIndex: currentIndex,
          onTap: onSelectedTap,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/bx_bxs-home.svg'),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/fe_search.svg'),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/bi_plus-circle-fill.svg'),
              label: 'Create',
            ),
            BottomNavigationBarItem(
              icon:
                  SvgPicture.asset('assets/images/clarity_dashboard-line.svg'),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/whh_profile.svg'),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
