import 'package:flutter/material.dart';
import 'package:hitch/constants/theme.dart';

class memberShipScreen extends StatefulWidget {
  const memberShipScreen({Key? key}) : super(key: key);

  @override
  _memberShipScreenState createState() => _memberShipScreenState();
}

class _memberShipScreenState extends State<memberShipScreen> {
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
          'Choose Plan',
          style: TextStyle(color: Color(0xff242424)),
        ),
      ),
      body: Center(),
    );
  }
}
