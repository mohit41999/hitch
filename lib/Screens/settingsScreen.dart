import 'package:flutter/material.dart';
import 'package:hitch/constants/theme.dart';

class settingScreen extends StatelessWidget {
  const settingScreen({Key? key}) : super(key: key);

  static const Color textfieldColor = Color(0xff242424);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appThemeColor,
      appBar: AppBar(
        backgroundColor: appThemeColor,
        title: Text(
          'Account Setting',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Payment  ID',
                      hintText: 'User@domain.com',
                      labelStyle: TextStyle(
                          color: textfieldColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      hintStyle: TextStyle(
                          color: textfieldColor.withOpacity(0.8), fontSize: 12),
                      floatingLabelBehavior: FloatingLabelBehavior.always),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Change Password  :',
                  style: TextStyle(
                      color: textfieldColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Enter Old Password *',
                      hintText: 'Enter old Password',
                      labelStyle: TextStyle(
                          color: textfieldColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      hintStyle: TextStyle(
                          color: textfieldColor.withOpacity(0.8), fontSize: 12),
                      floatingLabelBehavior: FloatingLabelBehavior.always),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Enter New Password *',
                      hintText: 'Enter new Password',
                      labelStyle: TextStyle(
                          color: textfieldColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      hintStyle: TextStyle(
                          color: textfieldColor.withOpacity(0.8), fontSize: 12),
                      floatingLabelBehavior: FloatingLabelBehavior.always),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Re-enter New Password *',
                      hintText: 'Re-enter new Password',
                      labelStyle: TextStyle(
                          color: textfieldColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      hintStyle: TextStyle(
                          color: textfieldColor.withOpacity(0.8), fontSize: 12),
                      floatingLabelBehavior: FloatingLabelBehavior.always),
                ),
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xffF3BEDC),
                      fixedSize: Size(500, 50),
                      //  side: BorderSide(),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Update Account',
                      style: TextStyle(color: Color(0xff2A1F23), fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xffFF5656),
                      fixedSize: Size(500, 50),
                      //  side: BorderSide(),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: () {},
                  child: Text(
                    'Delete Account',
                    style: TextStyle(color: Color(0xffffffff), fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
