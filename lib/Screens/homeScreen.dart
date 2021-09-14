import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hitch/constants/theme.dart';
import 'package:swipe_cards/draggable_card.dart';
import 'package:swipe_cards/swipe_cards.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
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
            print('like slide');
          },
          nopeAction: () {},
          superlikeAction: () {}));
    }

    _matchEngine = MatchEngine(swipeItems: _swipeItems);
    super.initState();
  }

  bool like = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appThemeColor,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Container(
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
                      Container(
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
                          ))
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  isCollapsed: true,
                  suffixIconConstraints:
                      BoxConstraints(maxWidth: 50, maxHeight: 50),
                  contentPadding: EdgeInsets.all(10),
                  filled: true,
                  fillColor: Color(0xffF3BEDC),
                  suffixIcon: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffF3BEDC),
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 1,
                                spreadRadius: 1,
                                color: Colors.grey,
                                offset: Offset(1, 1))
                          ]),
                      child: Icon(
                        Icons.search,
                        size: 30,
                      )),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.white,
                      )),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: 'Search Partner',
                  hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
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
                            child: Container()),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 210,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.transparent,

                                      Colors.black.withOpacity(0.5),
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
                                      Icon(
                                        Icons.info,
                                        size: 20,
                                        color: Colors.white,
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                swipeCardBtns(
                                  color: Color(0xffEECA59),
                                  iconData: Icons.refresh,
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
            ],
          ),
        ));
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
