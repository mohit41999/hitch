import 'package:flutter/material.dart';

class signUpButton extends StatelessWidget {
  const signUpButton({
    Key? key,
    required this.iconData,
    required this.signupText,
    required this.iconColor,
    required this.onPressed,
  }) : super(key: key);
  final IconData iconData;
  final Color iconColor;
  final String signupText;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Color(0xffFFE9F5),
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
            child: Icon(
              iconData,
              size: 20,
              color: iconColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              signupText,
              style: TextStyle(color: Color(0xff2A1F23)),
            ),
          )
        ],
      ),
    );
  }
}
