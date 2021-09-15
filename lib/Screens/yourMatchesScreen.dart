import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hitch/constants/theme.dart';

class yourMatchesScreen extends StatelessWidget {
  const yourMatchesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appThemeColor,
        body: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  (index == 0)
                      ? Divider(
                          color: Colors.black,
                        )
                      : Container(),
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text('You maches with Misellia '),
                    subtitle: Text('You have maches with Misellia...'),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                ],
              );
            }));
  }
}
