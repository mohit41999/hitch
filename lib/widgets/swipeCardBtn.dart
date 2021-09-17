import 'package:flutter/material.dart';

class swipeCardBtns extends StatefulWidget {
  final Color color;
  final IconData iconData;
  final double contSize;
  final double iconSize;
  final bool contcolor;

  final Function onPressed;

  const swipeCardBtns({
    Key? key,
    required this.color,
    required this.onPressed,
    required this.iconData,
    this.contSize = 30,
    this.iconSize = 20,
    this.contcolor = false,
  }) : super(key: key);

  @override
  _swipeCardBtnsState createState() => _swipeCardBtnsState();
}

class _swipeCardBtnsState extends State<swipeCardBtns> {
  late bool cont;
  Color contColor = Colors.transparent;
  bool iconcolor = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cont = widget.contcolor;
  }

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
              color: (cont)
                  ? (iconcolor)
                      ? contColor
                      : Colors.white
                  : contColor,
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
