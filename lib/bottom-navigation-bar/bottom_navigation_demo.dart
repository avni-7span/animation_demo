import 'package:animation_demo/bottom-navigation-bar/favourite_screen.dart';
import 'package:animation_demo/bottom-navigation-bar/home_screen.dart';
import 'package:animation_demo/bottom-navigation-bar/profile_screen.dart';
import 'package:animation_demo/bottom-navigation-bar/setting_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationDemo extends StatefulWidget {
  const BottomNavigationDemo({super.key});

  @override
  State<BottomNavigationDemo> createState() => _BottomNavigationDemoState();
}

class _BottomNavigationDemoState extends State<BottomNavigationDemo> {
  int currentIndex = 0;
  List<IconData> listOfIcons = [
    Icons.home,
    Icons.favorite_rounded,
    Icons.settings,
    Icons.person_rounded
  ];
  List<Widget> screenList = [
    const HomeScreen(),
    const FavouriteScreen(),
    const SettingScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: screenList[currentIndex],
      backgroundColor: Colors.blueGrey.shade100,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(20),
        height: width * 0.15,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 30,
              offset: const Offset(40, 40),
            ),
          ],
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: width * 0.020),
          itemCount: 4,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 1500),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: index == currentIndex ? width * 0.014 : 0,
                    width: width * 0.135,
                    margin: EdgeInsets.only(
                        bottom: index == currentIndex ? 0 : width * 0.030,
                        right: width * 0.0422,
                        left: width * 0.0422),
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(10),
                      ),
                    ),
                  ),
                  Icon(
                    listOfIcons[index],
                    size: width * 0.076,
                    color: index == currentIndex ? Colors.blue : Colors.grey,
                  ),
                  SizedBox(
                    height: width * 0.03,
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
