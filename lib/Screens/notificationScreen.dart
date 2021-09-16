import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hitch/constants/theme.dart';

class notificationScreen extends StatelessWidget {
  const notificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appThemeColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: appThemeColor,
        title: Text(
          'Notifications',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
          physics: AlwaysScrollableScrollPhysics(),
          itemCount: 12,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text('sadfghjkl'),
                    subtitle: Text('Qwertyuiop'),
                    trailing: Text('time'),
                  ),
                  Divider(
                    color: Colors.black,
                  )
                ],
              ),
            );
          }),
    );
  }
}
