import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_firestore_test/providers/firestore_provider.dart';
import 'package:flutter_firestore_test/pages/test_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_firestore_test/compornents/bottom_bar.dart';

class Page1 extends StatelessWidget {
  final AppBar headerBar;
  const Page1({Key? key, required this.headerBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: headerBar,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'firestore_gettest!!!',
              style: Theme.of(context).textTheme.headline4,
            ),
            Consumer(
              builder: (context, ref, child) {
                final _syllbaries = ref.watch(syllbariesProvider);

                return _syllbaries.when(
                  loading: () => const CircularProgressIndicator(),
                  error: (error, stack) => Text('Error: $error'),
                  data: (_syllbaries) {
                    //五十音ソート
                    _syllbaries
                        .sort(((a, b) => a.Syllabary.compareTo(b.Syllabary)));
                    //Grid表示
                    return GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: _syllbaries.length,
                      itemBuilder: (context, index) {
                        final syllbaries = _syllbaries[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return TestPage(
                                      headerBar: headerBar,
                                      strData: syllbaries.id,
                                      list: [],
                                    );
                                  },
                                ),
                              );
                            },
                            title: Text('${syllbaries.Syllabary}'),
                          ),
                        );
                      },
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
      // bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
