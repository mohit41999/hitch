import 'package:flutter/material.dart';
import 'package:hitch/Screens/profileSignUp.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class verifyOtpScreen extends StatefulWidget {
  const verifyOtpScreen({Key? key}) : super(key: key);

  @override
  _verifyOtpScreenState createState() => _verifyOtpScreenState();
}

class _verifyOtpScreenState extends State<verifyOtpScreen> {
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
            flex: 3,
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
                            'SignUp',
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                          SizedBox(
                            height: 30,
                          ),
                          PinCodeTextField(
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.white,
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontFamily: 'SegoeUI',
                              letterSpacing: 1,
                              fontWeight: FontWeight.w600,
                            ),
                            autoDismissKeyboard: false,
                            pinTheme: PinTheme(
                                inactiveColor: Colors.white,
                                activeColor: Colors.red,
                                fieldHeight: 70,
                                fieldWidth: 60,
                                activeFillColor: Colors.transparent,
                                inactiveFillColor: Colors.transparent,
                                selectedFillColor: Colors.transparent,
                                borderWidth: 1,
                                borderRadius: BorderRadius.circular(5),
                                shape: PinCodeFieldShape.underline,
                                disabledColor: Colors.white,
                                selectedColor: Colors.red),
                            appContext: context,
                            length: 4,
                            enableActiveFill: true,
                            onChanged: (String value) {},
                          ),
                          Center(
                              child: Text(
                            'Enter 4 Digit Number that got on registered Number',
                            style: TextStyle(color: Colors.white),
                          )),
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
                                        builder: (context) =>
                                            profileSignUpScreen()));
                              });
                            },
                            child: Text(
                              'Verify',
                              style: TextStyle(
                                  color: Color(0xff2A1F23), fontSize: 20),
                            ),
                          ),
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
