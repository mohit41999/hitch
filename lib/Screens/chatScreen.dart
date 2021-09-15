import 'package:flutter/material.dart';
import 'package:hitch/constants/theme.dart';

class chatScreen extends StatefulWidget {
  const chatScreen({Key? key}) : super(key: key);

  @override
  _chatScreenState createState() => _chatScreenState();
}

class _chatScreenState extends State<chatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: appThemeColor,
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 7,
                child: TextField(
                  decoration: InputDecoration(
                    //isCollapsed: true,
                    contentPadding: EdgeInsets.all(10),

                    filled: true,
                    fillColor: Color(0xffF3BEDC),

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        )),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: 'Search Chat',
                    hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff47004E26),
                            blurRadius: 1,
                            spreadRadius: 1,
                            offset: Offset(2, 2))
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF3BEDC),
                    ),
                    height: 45,
                    width: 45,
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 35,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(),
                        title: Text('aslll'),
                        subtitle: Text('111111111111111111111'),
                        trailing: Column(
                          children: [
                            Text('data'),
                            Text('data'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
