import 'package:flutter/material.dart';
import 'package:hitch/constants/theme.dart';

class userInfoScreen extends StatefulWidget {
  const userInfoScreen({Key? key}) : super(key: key);

  @override
  _userInfoScreenState createState() => _userInfoScreenState();
}

class _userInfoScreenState extends State<userInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appThemeColor,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          },
        ),
        title: Text(
          'User Name',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        backgroundColor: appThemeColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Row(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    'Share',
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
                    'Report',
                    style: TextStyle(color: Color(0xff2A1F23), fontSize: 20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
