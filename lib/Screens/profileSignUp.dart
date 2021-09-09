import 'package:flutter/material.dart';
import 'package:hitch/Screens/Home.dart';

class profileSignUpScreen extends StatefulWidget {
  const profileSignUpScreen({Key? key}) : super(key: key);

  @override
  _profileSignUpScreenState createState() => _profileSignUpScreenState();
}

class _profileSignUpScreenState extends State<profileSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xffFFE9F5),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Color(0xffFFE9F5),
              child: Container(
                child: Image.asset(
                  'images/login-image.png',
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffF3BEDC),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: ListView(
                padding: EdgeInsets.all(0),
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                              child: Text(
                            'Profile Completion',
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              enabled: true,
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              labelText: 'First Name',
                              hintText: 'Enter First Name',
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              labelStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                              hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              enabled: true,
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              labelText: 'Last Name',
                              hintText: 'Enter Last Name',
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              labelStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                              hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              enabled: true,
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              labelText: 'Select Gender ',
                              hintText: 'Select Gender',
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              labelStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                              hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              enabled: true,
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              labelText: 'Contact No.',
                              hintText: 'Enter Contact Number',
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              labelStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                              hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          //
                          SizedBox(
                            height: 40,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffFFE9F5),
                                fixedSize: Size.fromHeight(50),
                                //  side: BorderSide(),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => homeScreen()));
                              });
                            },
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                  color: Color(0xff2A1F23), fontSize: 20),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                              child: Text(
                            'You already have an account? Sign-in',
                            style: TextStyle(color: Colors.white),
                          )),
                          SizedBox(
                            height: 20,
                          ),
                          Row(children: <Widget>[
                            Expanded(
                              child: new Container(
                                  margin: const EdgeInsets.only(right: 15.0),
                                  child: Divider(
                                    color: Colors.white,
                                    // height: height,
                                  )),
                            ),
                            Text(
                              'Or Sign Up with',
                              style: TextStyle(color: Colors.white),
                            ),
                            Expanded(
                              child: new Container(
                                  margin: const EdgeInsets.only(left: 15.0),
                                  child: Divider(
                                    color: Colors.white,
                                  )),
                            ),
                          ]),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset('images/facebook-icon.png'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset('images/google-icon.png'),
                              ),
                            ],
                          )
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
