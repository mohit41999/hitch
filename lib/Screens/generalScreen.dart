import 'package:flutter/material.dart';
import 'package:hitch/Screens/MobileVerification-1.dart';
import 'package:hitch/Screens/SignUpScreen.dart';
import 'package:hitch/Screens/chatScreen.dart';
import 'package:hitch/Screens/homeScreen.dart';
import 'package:hitch/Screens/profileScreen.dart';
import 'package:hitch/Screens/profileSignUp.dart';
import 'package:hitch/Screens/settingsScreen.dart';
import 'package:hitch/Screens/verifyOtp.dart';
import 'package:hitch/Screens/myMatchesScreen.dart';
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
        myMatchesScreen(),
        chatScreen(),
        profileScreen(),
        // profileSignUpScreen(),
        // signUpScreen(),
        // verifyOtpScreen()
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        resizeToAvoidBottomInset: false,
        appBar: (_selectedIndex == 1)
            ? AppBar(
                elevation: 0,
                backgroundColor: appThemeColor,
                leading: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Color(0xff242424),
                  ),
                ),
                title: Text(
                  'My Matches',
                  style: TextStyle(
                    color: Color(0xff242424),
                  ),
                ),
              )
            : (_selectedIndex == 2)
                ? AppBar(
                    elevation: 0,
                    backgroundColor: appThemeColor,
                    leading: GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = 0;
                        });
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Color(0xff242424),
                      ),
                    ),
                    title: Text(
                      'My Chats',
                      style: TextStyle(
                        color: Color(0xff242424),
                      ),
                    ),
                  )
                : (_selectedIndex == 3)
                    ? AppBar(
                        elevation: 0,
                        backgroundColor: appThemeColor,
                        leading: GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = 0;
                            });
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Color(0xff242424),
                          ),
                        ),
                        title: Text(
                          'Profile',
                          style: TextStyle(
                            color: Color(0xff242424),
                          ),
                        ),
                        actions: [
                          PopupMenuButton(
                            initialValue: 0,
                            child: Container(
                              width: 40,
                              child: Center(
                                child: Icon(
                                  Icons.more_vert,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            itemBuilder: (BuildContext context) {
                              return List.generate(1, (index) {
                                return PopupMenuItem(
                                  child: GestureDetector(
                                    child: Text('Settings'),
                                    onTap: () {
                                      setState(() {
                                        Navigator.pop(context);
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    settingScreen()));
                                      });
                                    },
                                  ),
                                );
                              });
                            },
                          ),
                        ],
                      )
                    : null,
        backgroundColor: appThemeColor,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                  // height: MediaQuery.of(context).size.height * 0.9,
                  child: Expanded(child: _pages().elementAt(_selectedIndex))),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 40,
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
                        icon: Icon(
                          (_selectedIndex == 0)
                              ? Icons.home
                              : Icons.home_outlined,
                          color: IconColor,
                          size: (_selectedIndex == 0) ? 30 : 20,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _selectedIndex = 1;
                          });
                        },
                        icon: Icon(
                          (_selectedIndex == 1)
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: IconColor,
                          size: (_selectedIndex == 1) ? 35 : 20,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _selectedIndex = 2;
                          });
                        },
                        icon: Icon(
                          (_selectedIndex == 2)
                              ? Icons.chat_bubble
                              : Icons.chat_bubble_outline,
                          color: IconColor,
                          size: (_selectedIndex == 2) ? 30 : 20,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _selectedIndex = 3;
                          });
                        },
                        icon: Icon(
                          (_selectedIndex == 3)
                              ? Icons.person
                              : Icons.person_outline_rounded,
                          color: IconColor,
                          size: (_selectedIndex == 3) ? 30 : 20,
                        ),
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
