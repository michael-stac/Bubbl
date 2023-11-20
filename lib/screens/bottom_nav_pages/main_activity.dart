import 'package:bubbl/screens/bottom_nav_pages/profile/profile.dart';
import 'package:bubbl/screens/bottom_nav_pages/wallet/wallet.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';


import '../../services/shared/share_bottom_service.dart';
import '../../utilities/appcolors.dart';
import 'home/home.dart';

class MainActivityPage extends StatefulWidget {
  const MainActivityPage({Key? key,}) : super(key: key);
  @override
  State<MainActivityPage> createState() => _MainActivityPageState();
}

class _MainActivityPageState extends State<MainActivityPage> {
  ///bottom nav items
  List<Map>? bottomNavItems = [
    {'title': 'Home', 'icon': MdiIcons.rhombusSplit},
    {'title': "Procedures", 'icon': MdiIcons.medicalBag},
    {'title': "Profile", 'icon': Icons.account_circle},
  ];


  @override
  Widget build(BuildContext context) {
    return Consumer<ModelProviders>(builder: (context, counter, child) {
      List<Widget> bottomNavPages = [
       const HomeScreen(),
        const WalletScreen(),
        const SettingsScreen(),
      ];
      return Scaffold(
        body: bottomNavPages[counter.bottomCounter],
        bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color(0xffF1F0F0),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: AppColor.primaryColor,
            selectedLabelStyle:  TextStyle(
                fontWeight: FontWeight.w400,
                color: AppColor.primaryColor,
                fontSize: 11),
            onTap: (value) {
              counter.changeCounter(value);
            },
            currentIndex: counter.bottomCounter,
            items: List.generate(bottomNavItems!.length, (index) {
              final data = bottomNavItems![index];

              return BottomNavigationBarItem(
                  tooltip: data['title'],
                  icon: Icon(data['icon'],),
                  label: data['title']);
            })),
      );
    });
  }
}
