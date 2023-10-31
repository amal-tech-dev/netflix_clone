import 'package:flutter/material.dart';
import 'package:netflix_1/utils/color_constants.dart';
import 'package:netflix_1/view/main_screen/coming_soon_screen/coming_soon_screen.dart';
import 'package:netflix_1/view/main_screen/downloads_screen/downloads_screen.dart';
import 'package:netflix_1/view/main_screen/home_screen/home_screen.dart';
import 'package:netflix_1/view/main_screen/more_screen/more_screen.dart';
import 'package:netflix_1/view/main_screen/search_screen/search_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({required this.username});
  final String username;

  @override
  State<StatefulWidget> createState() => MainScreenState(
        username: username,
      );
}

class MainScreenState extends State<MainScreen> {
  MainScreenState({required this.username});
  final String username;
  int bottomNavigationIndex = 0;
  List<Widget> pages = [];

  @override
  void initState() {
    super.initState();
    pages = [
      HomeScreen(username: username),
      SearchScreen(),
      ComingSoonScreen(),
      DownloadsScreen(username: username),
      MoreScreen(username: username),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[bottomNavigationIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorConstant.bgColor,
        currentIndex: bottomNavigationIndex,
        onTap: (int index) => setState(() {
          bottomNavigationIndex = index;
        }),
        showUnselectedLabels: true,
        selectedItemColor: ColorConstant.iconColor,
        unselectedItemColor: ColorConstant.unselectedIconColor,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 8.2,
        unselectedFontSize: 8.2,
        items: [
          BottomNavigationBarItem(
            backgroundColor: ColorConstant.bgColor,
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_rounded,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                Icon(
                  Icons.video_library_outlined,
                ),
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFE50914),
                    radius: 5,
                    child: Text(
                      '4',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 6,
                        color: ColorConstant.textColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            label: 'Coming Soon',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.download_rounded,
            ),
            label: 'Downloads',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu_rounded,
            ),
            label: 'More',
          ),
        ],
      ),
    );
  }
}
