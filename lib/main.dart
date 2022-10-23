import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_firestore_test/providers/firestore_provider.dart';
import 'package:flutter_firestore_test/pages/test_page.dart';
import 'firebase_options.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_firestore_test/compornents/bottom_bar.dart';
import 'package:flutter_firestore_test/pages/page1.dart';
import 'package:flutter_firestore_test/pages/page2.dart';
import 'package:flutter_firestore_test/pages/page3.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firestore Demo',
      theme: ThemeData(
        fontFamily: 'Potta_One',
      ),
      home: const MyHomePage(
        title: "demodemo",
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pageWidgets = [
      Center(
        child: Page1(
          headerBar: AppBar(
            title: Text("一覧"),
            backgroundColor: Colors.blueAccent,
          ),
        ),
      ),
      Center(
        child: Page2(
          headerBar: AppBar(
            title: Text("検索"),
            backgroundColor: Colors.blueAccent,
          ),
        ),
      ),
      Center(
        child: Page3(
          headerBar: AppBar(
            title: Text("その他"),
            backgroundColor: Colors.blueAccent,
          ),
        ),
      ),
    ];

    final List<BottomNavigationBarItem> _tabItems = [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'ホーム',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: '検索',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.more_horiz),
        label: 'その他',
      ),
    ];
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: _tabItems,
        backgroundColor: Colors.white,
        activeColor: Colors.green,
        height: MediaQuery.of(context).size.height * 0.07,
        border: Border(
          top: BorderSide(
            color: Colors.grey, //枠線の色
            width: 1, //枠線の太さ
          ),
        ),
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(builder: (context) {
          return _pageWidgets[index];
        });
      },
    );
  }
}
