import 'package:flutter/material.dart';
import 'package:hitch/constants/theme.dart';

class userMatchedScreen extends StatefulWidget {
  const userMatchedScreen({Key? key}) : super(key: key);

  @override
  _userMatchedScreenState createState() => _userMatchedScreenState();
}

class _userMatchedScreenState extends State<userMatchedScreen> {
  static const Color textFieldColor = Color(0xff242424);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appThemeColor,
      appBar: AppBar(
        backgroundColor: appThemeColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'My Matches',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          PopupMenuButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text(
                        "Report",
                        textAlign: TextAlign.left,
                      ),
                      padding: EdgeInsets.only(
                          right: 55, left: 15, bottom: 0, top: 0),
                      value: 1,
                    ),
                    PopupMenuItem(
                        child: Divider(
                      color: Colors.pink,
                    )),
                    PopupMenuItem(
                      padding: EdgeInsets.only(right: 55, left: 15, bottom: 2),
                      child: Text(
                        "Block",
                        textAlign: TextAlign.left,
                      ),
                      value: 2,
                    )
                  ])
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              //color: Colors.cyan,
              height: 200,
              child: Stack(
                children: [
                  Positioned(
                    child: CircleAvatar(
                      radius: 90,
                      backgroundColor: Colors.red,
                    ),
                    right: 50,
                  ),
                  Positioned(
                    child: CircleAvatar(
                      radius: 90,
                    ),
                    left: 50,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'You Match With Misella',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  color: textFieldColor,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xffF3BEDC),
                      fixedSize: Size(150, 50),
                      //  side: BorderSide(),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text(
                    'Unmatch',
                    style: TextStyle(color: Color(0xff2A1F23), fontSize: 20),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xffF3BEDC),
                      fixedSize: Size(150, 50),
                      //  side: BorderSide(),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text(
                    'Message',
                    style: TextStyle(color: Color(0xff2A1F23), fontSize: 20),
                  ),
                ),
              ],
            ),
            TextField(
              decoration: InputDecoration(
                enabled: true,
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: textFieldColor)),
                labelText: 'Age',
                hintText: '22 Years',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: TextStyle(
                    color: textFieldColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
                hintStyle: TextStyle(
                    color: textFieldColor.withOpacity(0.7),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                enabled: true,
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: textFieldColor)),
                labelText: 'Distance',
                hintText: '5 KM',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: TextStyle(
                    color: textFieldColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
                hintStyle: TextStyle(
                    color: textFieldColor.withOpacity(0.7),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                enabled: true,
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: textFieldColor)),
                labelText: 'Mutual Interests',
                hintText: 'Boys',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: TextStyle(
                    color: textFieldColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
                hintStyle: TextStyle(
                    color: textFieldColor.withOpacity(0.7),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                enabled: true,
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: textFieldColor)),
                labelText: 'Job/Business',
                hintText: 'Dancer',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: TextStyle(
                    color: textFieldColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
                hintStyle: TextStyle(
                    color: textFieldColor.withOpacity(0.7),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                enabled: true,
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: textFieldColor)),
                labelText: 'Company',
                hintText: 'Company Name',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: TextStyle(
                    color: textFieldColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
                hintStyle: TextStyle(
                    color: textFieldColor.withOpacity(0.7),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                enabled: true,
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: textFieldColor)),
                labelText: 'Education',
                hintText: 'University Name',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: TextStyle(
                    color: textFieldColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
                hintStyle: TextStyle(
                    color: textFieldColor.withOpacity(0.7),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                enabled: true,
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: textFieldColor)),
                labelText: 'Current Location',
                hintText: 'Current location',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: TextStyle(
                    color: textFieldColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
                hintStyle: TextStyle(
                    color: textFieldColor.withOpacity(0.7),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                enabled: true,
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: textFieldColor)),
                labelText: 'Gender',
                hintText: 'Female',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: TextStyle(
                    color: textFieldColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
                hintStyle: TextStyle(
                    color: textFieldColor.withOpacity(0.7),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                enabled: true,
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: textFieldColor)),
                labelText: 'Sexual Orientation',
                hintText: 'Straight',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: TextStyle(
                    color: textFieldColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
                hintStyle: TextStyle(
                    color: textFieldColor.withOpacity(0.7),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
