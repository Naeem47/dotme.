
import 'package:dot_me/View/Screen/ChatScreen.dart';
import 'package:dot_me/View/Screen/HomeScreen/KalenderScreen.dart';
import 'package:dot_me/View/Screen/HomeScreen/MainScreen/MainDrawerScreen/MainDashboard.dart';
import 'package:dot_me/View/Screen/HomeScreen/MainScreen/MainDrawerScreen/compunents/Appbar.dart';
import 'package:dot_me/View/Screen/HomeScreen/MainScreen/Side_Menu/compunents/DrawerIconButton.dart';
import 'package:dot_me/View/Screen/HomeScreen/SocailMeScreen.dart';
import 'package:dot_me/View/Screen/PaymentScreen.dart';
import 'package:dot_me/View/Screen/clientscreen.dart';
import 'package:dot_me/View/Screen/onbaording.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _screens = [

   OnboardingScreen(),
    // Content for Home tab
    // MainDashboard(),
    // Content for Feed tab
    KalenderScreen(),
    // Content for Favorites tab
    SocailScreen(),
    // Content for Settings tab
    const ChatScreen(),
    
    const PaymentScreen(),
    const ClientsPage(),
    // const WebLayoutScreen()
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MediaQuery.of(context).size.width < 640
          ? BottomNavigationBar(
              currentIndex: _selectedIndex,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.indigoAccent,
              // called when one tab is selected
              onTap: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              // bottom tab items
              items: [
                  BottomNavigationBarItem(
                    label: '',
                    icon: DrawerIconButton(
                      image: 'assets/dotedicon.png',
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: '',
                    icon: DrawerIconButton(
                      image: 'assets/calendericon.png',
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: '',
                    icon: DrawerIconButton(
                      image: 'assets/personicon.png',
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: '',
                    icon: DrawerIconButton(
                      image: 'assets/massegebox.png',
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: '',
                    icon: DrawerIconButton(
                      image: 'assets/notesicon.png',
                    ),
                  ),
                ])
          : null,
      body: Stack(
        children: [
              
          Expanded(
            child: Row(
              children: [
                if (MediaQuery.of(context).size.width >= 640)
                  NavigationRail(
                    onDestinationSelected: (int index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    selectedIndex: _selectedIndex,

                    destinations: [
                        
                          // ),
                      NavigationRailDestination(
                          icon: DrawerIconButton(
                            image: 'assets/dotedicon.png',
                          ),
                          label: Text('Home')),
                      NavigationRailDestination(
                          icon: DrawerIconButton(
                            image: 'assets/calendericon.png',
                          ),
                          label: const Text('Feed')),
                      NavigationRailDestination(
                          icon: DrawerIconButton(
                            image: 'assets/personicon.png',
                          ),
                          label: Text('Favorites')),
                      NavigationRailDestination(
                          icon: DrawerIconButton(
                            image: 'assets/massegebox.png',
                          ),
                          label: Text('Settings')),
                      NavigationRailDestination(
                          icon: DrawerIconButton(
                            image: 'assets/notesicon.png',
                          ),
                          label: Text('Settings')),
                      NavigationRailDestination(
                        label: Text('home'),
                        icon: DrawerIconButton(
                          image: 'assets/meicon.png',
                        ),
                      ),
                    ],

                    labelType: NavigationRailLabelType.none,
                    leading: Container(
                                  height: 48,
                                  width: 48,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/logoball.png'),
                                          fit: BoxFit.fill)),),

                    // Called when one tab is selected
                  ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: _screens[_selectedIndex],
                )),
              ],
            ),
          ),
          Positioned(
            left: 60,
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.93,
                  // color: Colors.deepOrange.shade100,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey.shade200))),
                  child: const AppbarWidget(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
