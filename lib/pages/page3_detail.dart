import 'package:flutter/material.dart';

class Page3Detail extends StatelessWidget {
  const Page3Detail(
      {Key? key, this.headerBar, required this.title, required this.detail})
      : super(key: key);
  final AppBar? headerBar;
  final String title;
  final String detail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: headerBar,
      body: Column(
        children: [
          Container(
            child: Text(
              title,
              textScaleFactor: 3,
            ),
          ),
          Container(
            child: Text(
              detail,
              textScaleFactor: 5,
            ),
          ),
        ],
      ),
    );
  }
}
