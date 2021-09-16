import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hitch/Screens/userInfoPage.dart';
import 'package:hitch/constants/theme.dart';
import 'package:swipe_cards/draggable_card.dart';
import 'package:swipe_cards/swipe_cards.dart';

import 'notificationScreen.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  static const Color textFieldColor = Colors.white;
  List<SwipeItem> _swipeItems = <SwipeItem>[];
  late MatchEngine _matchEngine;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  List<String> _imageUrlStrings = [
    'images/r.jpg',
    'images/q.jpg',
    'images/imageonep.jpg',
    'images/imageonec.jpg',
    'images/login-image.png',
  ];
  late Decision decision;
  @override
  void initState() {
    for (int i = 0; i < _imageUrlStrings.length; i++) {
      _swipeItems.add(SwipeItem(
          content: Content(imageUrl: _imageUrlStrings[i]),
          likeAction: () {
            setState(() {
              print('like slide22222222');
            });
          },
          nopeAction: () {},
          superlikeAction: () {}));
    }

    _matchEngine = MatchEngine(
      swipeItems: _swipeItems,
    );
    super.initState();
  }

  bool like = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: appThemeColor,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Location'),
                            Icon(Icons.keyboard_arrow_down)
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined),
                            Text(' Bali, '),
                            Text('Indonesia'),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            RangeValues distanceRange = RangeValues(0, 20);
                            RangeValues ageBetween = RangeValues(18, 25);
                            showModalBottomSheet<void>(
                              context: context,
                              barrierColor: Colors.white.withOpacity(0.2),
                              backgroundColor: Colors.transparent,
                              builder: (BuildContext context) {
                                return StatefulBuilder(
                                  builder: (BuildContext context,
                                      void Function(void Function()) setState) {
                                    return Container(
                                      height: 1000,
                                      decoration: BoxDecoration(
                                          color: Color(0xffF3BEDC),
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30))),
                                      child: ListView(
                                        physics: BouncingScrollPhysics(),
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Center(
                                                  child: Text(
                                                    'Filters',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 40),
                                                  ),
                                                ),
                                                TextField(
                                                  decoration: InputDecoration(
                                                    enabled: true,
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                    color: Colors
                                                                        .white)),
                                                    labelText:
                                                        'Mutual Interests',
                                                    hintText: 'Boys',
                                                    floatingLabelBehavior:
                                                        FloatingLabelBehavior
                                                            .always,
                                                    labelStyle: TextStyle(
                                                        color: textFieldColor,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    hintStyle: TextStyle(
                                                        color: textFieldColor
                                                            .withOpacity(0.8),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 30,
                                                ),
                                                Text(
                                                  'Select Age',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  '${ageBetween.start.round().toString()} Years - ${ageBetween.end.round().toString()} Years',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(0.8),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                RangeSlider(
                                                  activeColor: Colors.white,
                                                  inactiveColor: Colors.white38,
                                                  values: ageBetween,
                                                  onChanged: (v) {
                                                    setState(() {
                                                      ageBetween = v;
                                                    });
                                                  },
                                                  max: 50,
                                                  min: 18,
                                                  labels: RangeLabels(
                                                    ageBetween.start
                                                        .round()
                                                        .toString(),
                                                    ageBetween.end
                                                        .round()
                                                        .toString(),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 30,
                                                ),
                                                TextField(
                                                  decoration: InputDecoration(
                                                    enabled: true,
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                    color: Colors
                                                                        .white)),
                                                    labelText:
                                                        'Mutual Interests',
                                                    hintText: 'Boys',
                                                    floatingLabelBehavior:
                                                        FloatingLabelBehavior
                                                            .always,
                                                    labelStyle: TextStyle(
                                                        color: textFieldColor,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    hintStyle: TextStyle(
                                                        color: textFieldColor
                                                            .withOpacity(0.8),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 30,
                                                ),
                                                TextField(
                                                  decoration: InputDecoration(
                                                    enabled: true,
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                    color: Colors
                                                                        .white)),
                                                    labelText:
                                                        'Mutual Interests',
                                                    hintText: 'Boys',
                                                    floatingLabelBehavior:
                                                        FloatingLabelBehavior
                                                            .always,
                                                    labelStyle: TextStyle(
                                                        color: textFieldColor,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    hintStyle: TextStyle(
                                                        color: textFieldColor
                                                            .withOpacity(0.8),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 30,
                                                ),
                                                Text(
                                                  'Select Distance',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  '${distanceRange.start.round().toString()} KM - ${distanceRange.end.round().toString()}KM',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(0.8),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                RangeSlider(
                                                  inactiveColor: Colors.white38,
                                                  activeColor: Colors.white,
                                                  values: distanceRange,
                                                  onChanged: (v) {
                                                    setState(() {
                                                      distanceRange = v;
                                                    });
                                                  },
                                                  max: 200,
                                                  min: 0,
                                                  labels: RangeLabels(
                                                    distanceRange.start
                                                        .round()
                                                        .toString(),
                                                    distanceRange.end
                                                        .round()
                                                        .toString(),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 30,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              primary: Color(
                                                                  0xffFFE9F5),
                                                              fixedSize:
                                                                  Size(150, 50),
                                                              //  side: BorderSide(),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              50))),
                                                      onPressed: () {
                                                        setState(() {});
                                                      },
                                                      child: Text(
                                                        'Reset',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff2A1F23),
                                                            fontSize: 20),
                                                      ),
                                                    ),
                                                    ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              primary: Color(
                                                                  0xffFFE9F5),
                                                              fixedSize:
                                                                  Size(150, 50),
                                                              //  side: BorderSide(),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              50))),
                                                      onPressed: () {
                                                        setState(() {});
                                                      },
                                                      child: Text(
                                                        'Apply',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff2A1F23),
                                                            fontSize: 20),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                            );
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 1,
                                        spreadRadius: 1,
                                        color: Colors.grey,
                                        offset: Offset(1, 1))
                                  ]),
                              child: Icon(
                                CupertinoIcons.slider_horizontal_3,
                                size: 30,
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          notificationScreen()));
                            });
                          },
                          child: Container(
                              margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 1,
                                        spreadRadius: 1,
                                        color: Colors.grey,
                                        offset: Offset(1, 1))
                                  ]),
                              child: Icon(
                                Icons.notifications_none_outlined,
                                size: 30,
                              )),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 0,
                ),
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
                            hintText: 'Search Partner',
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
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
                  height: 8,
                ),
                Container(
                  height: 430,
                  margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: SwipeCards(
                    matchEngine: _matchEngine,
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.7,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage(
                                      _swipeItems[index].content.imageUrl),
                                  fit: BoxFit.cover,
                                ),
                                // color: _swipeItems[index].content.color,
                                borderRadius: BorderRadius.circular(25)),
                            alignment: Alignment.topLeft,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 210,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  gradient: LinearGradient(
                                      colors: [
                                        Colors.transparent,

                                        Colors.black.withOpacity(0.7),
                                        // Color(0xffC884BF).withOpacity(0.2),
                                        // Color(0xffC884BF).withOpacity(0.4)
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter)),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 210,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Name, ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Age    ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.verified_outlined,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          userInfoScreen()));
                                            });
                                          },
                                          child: Icon(
                                            Icons.info,
                                            size: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Dancer, Friendly, Dancer, Friendly Dancer, Friendly, Lorem ipsum dolor sit amet consectetur adipisicing elit',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  swipeCardBtns(
                                    color: Color(0xffEECA59),
                                    iconData: CupertinoIcons.refresh_bold,
                                    onPressed: () {
                                      setState(() {
                                        _matchEngine.rewindMatch();
                                      });
                                    },
                                  ),
                                  swipeCardBtns(
                                    contSize: 40,
                                    iconSize: 25,
                                    color: Color(0xffF54561),
                                    iconData: Icons.close,
                                    onPressed: () {
                                      setState(() {
                                        _matchEngine.currentItem?.nope();
                                      });
                                    },
                                  ),
                                  swipeCardBtns(
                                    color: Color(0xff33BAEF),
                                    iconData: Icons.star_rate,
                                    onPressed: () {
                                      setState(() {
                                        _matchEngine.currentItem?.superLike();
                                      });
                                    },
                                  ),
                                  swipeCardBtns(
                                    contSize: 40,
                                    iconSize: 25,
                                    color: Color(0xff1FDEB3),
                                    iconData: Icons.favorite,
                                    onPressed: () {
                                      setState(() {
                                        _matchEngine.currentItem?.like();
                                      });
                                    },
                                  ),
                                  swipeCardBtns(
                                    color: Color(0xffAF43EE),
                                    iconData: Icons.flash_on_sharp,
                                    onPressed: () {
                                      setState(() {
                                        _matchEngine.currentItem?.nope();
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    onStackFinished: () {
                      _scaffoldKey.currentState!.showSnackBar(SnackBar(
                        content: Text("Stack Finished"),
                        duration: Duration(milliseconds: 500),
                      ));
                    },
                  ),
                ),
                SizedBox(
                  height: 5,
                )
              ],
            ),
          )),
    );
  }
}

class swipeCardBtns extends StatefulWidget {
  final Color color;
  final IconData iconData;
  final double contSize;
  final double iconSize;

  final Function onPressed;

  const swipeCardBtns({
    Key? key,
    required this.color,
    required this.onPressed,
    required this.iconData,
    this.contSize = 30,
    this.iconSize = 20,
  }) : super(key: key);

  @override
  _swipeCardBtnsState createState() => _swipeCardBtnsState();
}

class _swipeCardBtnsState extends State<swipeCardBtns> {
  Color contColor = Colors.transparent;
  bool iconcolor = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onLongPress: () {
          setState(() {
            contColor = widget.color;
            iconcolor = true;
            // widget.onPressed();
          });
        },
        onLongPressEnd: (value) {
          setState(() {
            // contColor = Colors.transparent;
            // iconcolor = false;
            widget.onPressed();
          });
        },
        onTap: () {
          widget.onPressed();
          contColor = widget.color;
          iconcolor = true;
        },
        child: Container(
          height: widget.contSize,
          width: widget.contSize,
          decoration: BoxDecoration(
              color: contColor,
              borderRadius: BorderRadius.circular(40),
              border: Border.all(color: widget.color, width: 1)),
          child: Center(
            child: Icon(widget.iconData,
                size: widget.iconSize,
                color: (iconcolor) ? Colors.white : widget.color),
          ),
        ));
  }
}

class Content {
  final String imageUrl;

  Content({required this.imageUrl});
}
