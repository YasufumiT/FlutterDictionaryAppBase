import 'package:flutter/material.dart';
import 'package:flutter_firestore_test/pages/page3_detail.dart';

class Others {
  final String title;
  final String Detail;
  Others(this.title, this.Detail);
}

class Page3 extends StatelessWidget {
  const Page3({Key? key, this.headerBar}) : super(key: key);
  final AppBar? headerBar;

  @override
  Widget build(BuildContext context) {
    final List<Others> _others = [
      Others("テスト１", "テスト１詳細テスト１詳細テスト１詳細テスト１詳細"),
      Others("テスト２", "テスト２詳細テスト２詳細テスト２詳細テスト２詳細"),
    ];
    return Scaffold(
      appBar: headerBar,
      body: Container(
        child: ListView.builder(
          itemCount: _others.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                minVerticalPadding: 30,
                title: Text(_others[index].title),
                onTap: () {
                  print(_others[index].Detail);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return Page3Detail(
                          headerBar: headerBar,
                          title: _others[index].title,
                          detail: _others[index].Detail,
                        );
                      },
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
