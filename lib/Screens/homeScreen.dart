import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hitch/constants/theme.dart';
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
  List<String> _names = ["Red", "Blue", "Green", "Yellow", "Orange"];
  List<Color> _colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange
  ];

  @override
  void initState() {
    for (int i = 0; i < _names.length; i++) {
      _swipeItems.add(SwipeItem(
          content: Content(text: _names[i], color: _colors[i]),
          likeAction: () {
            _scaffoldKey.currentState!.showSnackBar(SnackBar(
              content: Text("Liked ${_names[i]}"),
              duration: Duration(milliseconds: 500),
            ));
          },
          nopeAction: () {
            _scaffoldKey.currentState!.showSnackBar(SnackBar(
              content: Text("Nope ${_names[i]}"),
              duration: Duration(milliseconds: 500),
            ));
          },
          superlikeAction: () {
            _scaffoldKey.currentState!.showSnackBar(SnackBar(
              content: Text("Superliked ${_names[i]}"),
              duration: Duration(milliseconds: 500),
            ));
          }));
    }

    _matchEngine = MatchEngine(swipeItems: _swipeItems);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appThemeColor,
        body: SingleChildScrollView(
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
              Container(
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
                              color: _swipeItems[index].content.color,
                              borderRadius: BorderRadius.circular(25)),
                          alignment: Alignment.center,
                          child: Text(
                            _swipeItems[index].content.text,
                            style: TextStyle(fontSize: 100),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    _matchEngine.currentItem?.nope();
                                  },
                                  child: Text("Nope")),
                              ElevatedButton(
                                  onPressed: () {
                                    _matchEngine.currentItem?.superLike();
                                  },
                                  child: Text("Superlike")),
                              ElevatedButton(
                                  onPressed: () {
                                    _matchEngine.currentItem?.like();
                                  },
                                  child: Text("Like"))
                            ],
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

class Content {
  final String text;
  final Color color;

  Content({required this.text, required this.color});
}
