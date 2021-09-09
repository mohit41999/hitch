import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hitch/Screens/SignUpScreen.dart';
import 'package:hitch/widgets/signUpBtn.dart';

class mobileVerificationOne extends StatefulWidget {
  const mobileVerificationOne({Key? key}) : super(key: key);

  @override
  _mobileVerificationOneState createState() => _mobileVerificationOneState();
}

class _mobileVerificationOneState extends State<mobileVerificationOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFE9F5),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Color(0xffFFE9F5),
              child: Container(
                width: double.infinity,
                child: Image.asset(
                  'images/hitch-logo.png',
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              //height: 400,
              decoration: BoxDecoration(
                  color: Color(0xffF3BEDC),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: signUpButton(
                          iconData: FontAwesomeIcons.google,
                          signupText: 'Login With Google',
                          iconColor: Colors.red,
                          onPressed: () {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: signUpButton(
                          iconData: Icons.phone_outlined,
                          signupText: 'Login With Number',
                          iconColor: Colors.black,
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => signUpScreen()));
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: signUpButton(
                          iconData: FontAwesomeIcons.facebook,
                          signupText: 'Login With Facebook',
                          iconColor: Colors.blue,
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
