import 'package:flutter/material.dart';
import 'package:hitch/Screens/MobileVerification-1.dart';
import 'package:hitch/Screens/SignUpScreen.dart';
import 'package:hitch/Screens/homeScreen.dart';
import 'package:hitch/Screens/profileSignUp.dart';
import 'package:hitch/Screens/verifyOtp.dart';
import 'package:hitch/Screens/yourMatchesScreen.dart';
import 'package:hitch/constants/theme.dart';

class generalScreen extends StatefulWidget {
  const generalScreen({Key? key}) : super(key: key);

  @override
  _generalScreenState createState() => _generalScreenState();
}

class _generalScreenState extends State<generalScreen> {
  Color IconColor = Color(0xffF3BEDC);
  int _selectedIndex = 0;
  Color bottom = Colors.white;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _pages() => <Widget>[
        homeScreen(),
        yourMatchesScreen(),
        homeScreen(),
        homeScreen(),
        // profileSignUpScreen(),
        // signUpScreen(),
        // verifyOtpScreen()
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appThemeColor,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                  // height: MediaQuery.of(context).size.height * 0.9,
                  child: Expanded(child: _pages().elementAt(_selectedIndex))),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 1,
                            color: Colors.grey,
                            offset: Offset(3, 2))
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _selectedIndex = 0;
                          });
                        },
                        icon: Icon(Icons.home_outlined, color: IconColor),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _selectedIndex = 1;
                          });
                        },
                        icon: Icon(
                          Icons.favorite_border,
                          color: IconColor,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _selectedIndex = 2;
                          });
                        },
                        icon: Icon(Icons.chat, color: IconColor),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _selectedIndex = 3;
                          });
                        },
                        icon: Icon(Icons.person_outline_rounded,
                            color: IconColor),
                      ),
                    ],
                  ),
                  // child: BottomNavigationBar(
                  //   selectedItemColor: appThemeColor,
                  //   showSelectedLabels: false,
                  //   showUnselectedLabels: false,
                  //   items: <BottomNavigationBarItem>[
                  //     BottomNavigationBarItem(
                  //       backgroundColor: bottom,
                  //       icon: Icon(Icons.home),
                  //       label: 'Home',
                  //     ),
                  //     BottomNavigationBarItem(
                  //       backgroundColor: bottom,
                  //       icon: Icon(Icons.favorite),
                  //       label: 'Favourites',
                  //     ),
                  //     BottomNavigationBarItem(
                  //       backgroundColor: bottom,
                  //       icon: Icon(Icons.call),
                  //       label: 'Calls',
                  //     ),
                  //     BottomNavigationBarItem(
                  //       backgroundColor: bottom,
                  //       icon: Icon(Icons.person),
                  //       label: 'Accounts',
                  //     ),
                  //     // BottomNavigationBarItem(
                  //     //   icon: Icon(Icons.chat),
                  //     //   label: 'Chats',
                  //     // ),
                  //   ],
                  //   currentIndex: _selectedIndex,
                  //   onTap: _onItemTapped,
                  // ),
                ),
              ),
            ],
          ),
        ));
  }
}
