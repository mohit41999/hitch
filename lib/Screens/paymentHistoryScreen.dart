import 'package:flutter/material.dart';
import 'package:hitch/constants/theme.dart';

class paymentHistoryScreen extends StatefulWidget {
  const paymentHistoryScreen({Key? key}) : super(key: key);

  @override
  _paymentHistoryScreenState createState() => _paymentHistoryScreenState();
}

class _paymentHistoryScreenState extends State<paymentHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appThemeColor,
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
          'Payment History',
          style: TextStyle(color: Colors.black),
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: appThemeColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 7,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: 40),
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
                      height: 40,
                      width: 40,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 35,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Transaction ID : 09563185963124',
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff242424)),
                        ),
                        Text('Lorem, ipsum dolor sit amet Lorem, ipsum...',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff242424))),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Amount : \$ 199.99',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Color(0xff242424)),
                            ),
                            Text('Date'),
                          ],
                        ),
                        Divider(
                          height: 40,
                          color: Colors.black,
                        ),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
