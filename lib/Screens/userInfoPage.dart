import 'package:flutter/material.dart';
import 'package:hitch/constants/theme.dart';
import 'package:hitch/widgets/swipeCardBtn.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              width: double.infinity,
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(10)),
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'User Name   Age',
              style: TextStyle(
                fontSize: 22,
                color: Color(0xff242424),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Location',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xff242424),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '4 km away',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff242424),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Passion',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xff242424),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Dance, Driving, Cooking, Art',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff242424),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Bussiness',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xff242424),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Social Media Handling',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff242424),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Instagram Photos',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xff242424),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.white,
                        ),
                      );
                    })),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onLongPress: () {
                      setState(() {
                        // widget.onPressed();
                      });
                    },
                    onLongPressEnd: (value) {
                      setState(() {
                        // contColor = Colors.transparent;
                        // iconcolor = false;
                      });
                    },
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.7),
                                blurRadius: 1,
                                spreadRadius: 1,
                                offset: Offset(2, 2))
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          border:
                              Border.all(color: Color(0xffF54561), width: 1)),
                      child: Center(
                        child: Icon(Icons.close,
                            size: 25, color: Color(0xffF54561)),
                      ),
                    )),
                GestureDetector(
                    onLongPress: () {
                      setState(() {
                        // widget.onPressed();
                      });
                    },
                    onLongPressEnd: (value) {
                      setState(() {
                        // contColor = Colors.transparent;
                        // iconcolor = false;
                      });
                    },
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.7),
                                blurRadius: 1,
                                spreadRadius: 1,
                                offset: Offset(2, 2))
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          border:
                              Border.all(color: Color(0xff33BAEF), width: 1)),
                      child: Center(
                        child: Icon(Icons.star_rate,
                            size: 25, color: Color(0xff33BAEF)),
                      ),
                    )),
                GestureDetector(
                    onLongPress: () {
                      setState(() {
                        // widget.onPressed();
                      });
                    },
                    onLongPressEnd: (value) {
                      setState(() {
                        // contColor = Colors.transparent;
                        // iconcolor = false;
                      });
                    },
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.7),
                                blurRadius: 1,
                                spreadRadius: 1,
                                offset: Offset(2, 2))
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          border:
                              Border.all(color: Color(0xff1FDEB3), width: 1)),
                      child: Center(
                        child: Icon(Icons.favorite,
                            size: 25, color: Color(0xff1FDEB3)),
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
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
