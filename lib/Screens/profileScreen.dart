import 'package:flutter/material.dart';
import 'package:hitch/Screens/paymentHistoryScreen.dart';
import 'package:hitch/constants/theme.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({Key? key}) : super(key: key);

  @override
  _profileScreenState createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  RangeValues distanceRange = RangeValues(0, 20);
  static const Color textFieldColor = Color(0xff242424);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: appThemeColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ListTile(
              leading: Container(
                  height: 70,
                  width: 70,
                  child: CircleAvatar(
                    radius: 70,
                  )),
              title: Text('Misellia'),
              subtitle: Text('Dancer, Friendly'),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Profile Picture',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color(0xffF3BEDC),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      Text(
                        'Choose Image',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color(0xffF3BEDC),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      Text(
                        'Choose Image',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color(0xffF3BEDC),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      Text(
                        'Choose Image',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Text('Date of Birth'),
            Row(),
            Text('Distance'),
            RangeSlider(
              values: distanceRange,
              onChanged: (v) {
                setState(() {
                  distanceRange = v;
                });
              },
              max: 200,
              min: 0,
              labels: RangeLabels(
                distanceRange.start.round().toString(),
                distanceRange.end.round().toString(),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                enabled: true,
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                labelText: 'Mutual Interests',
                hintText: 'Boys',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: TextStyle(
                    color: textFieldColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                hintStyle: TextStyle(
                    color: textFieldColor.withOpacity(0.8),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                enabled: true,
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                labelText: 'Mutual Interests',
                hintText: 'Boys',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: TextStyle(
                    color: textFieldColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                hintStyle: TextStyle(
                    color: textFieldColor.withOpacity(0.8),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                enabled: true,
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                labelText: 'Mutual Interests',
                hintText: 'Boys',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: TextStyle(
                    color: textFieldColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                hintStyle: TextStyle(
                    color: textFieldColor.withOpacity(0.8),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                enabled: true,
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                labelText: 'Mutual Interests',
                hintText: 'Boys',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: TextStyle(
                    color: textFieldColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                hintStyle: TextStyle(
                    color: textFieldColor.withOpacity(0.8),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                enabled: true,
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                labelText: 'Mutual Interests',
                hintText: 'Boys',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: TextStyle(
                    color: textFieldColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                hintStyle: TextStyle(
                    color: textFieldColor.withOpacity(0.8),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                enabled: true,
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                labelText: 'Mutual Interests',
                hintText: 'Boys',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: TextStyle(
                    color: textFieldColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                hintStyle: TextStyle(
                    color: textFieldColor.withOpacity(0.8),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                enabled: true,
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                labelText: 'Mutual Interests',
                hintText: 'Boys',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: TextStyle(
                    color: textFieldColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                hintStyle: TextStyle(
                    color: textFieldColor.withOpacity(0.8),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text('Connect to insta'),
              subtitle: Text('asdadsadsadadadad'),
            ),
            profileScreenUpdateBtn(
                onPressed: () {
                  setState(() {});
                },
                title: 'Update Profile'),
            SizedBox(
              height: 10,
            ),
            profileScreenUpdateBtn(
              title: 'Upgrade Membership',
              onPressed: () {},
            ),
            SizedBox(
              height: 10,
            ),
            profileScreenUpdateBtn(
              title: 'Payment History',
              onPressed: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => paymentHistoryScreen()));
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class profileScreenUpdateBtn extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  const profileScreenUpdateBtn({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Color(0xffF3BEDC),
          fixedSize: Size.fromHeight(50),
          //  side: BorderSide(),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(color: Color(0xff2A1F23)),
            ),
          )
        ],
      ),
    );
  }
}
