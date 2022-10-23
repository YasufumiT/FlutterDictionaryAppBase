import 'package:flutter/material.dart';
import 'package:flutter_firestore_test/data/dialect_list.dart';
import 'package:flutter_firestore_test/providers/firestore_provider.dart';
import 'package:flutter_firestore_test/pages/test_page_detail.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TestPage extends ConsumerWidget {
  final String strData;
  final AppBar? headerBar;
  final List<DialectList> list;
  const TestPage(
      {Key? key, required this.strData, required this.list, this.headerBar})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: headerBar,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'testpage',
              style: Theme.of(context).textTheme.headline4,
            ),
            Consumer(builder: (context, ref, child) {
              final _syllbaries = ref.watch(dialectsProvider(strData));
              return _syllbaries.when(
                  loading: () => const CircularProgressIndicator(),
                  error: (error, stack) => Text('Error: $error'),
                  data: (_syllbaries) {
                    //五十音ソート
                    _syllbaries.sort(((a, b) => a.Word.compareTo(b.Word)));
                    //Grid表示
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: _syllbaries.length,
                      itemBuilder: (context, index) {
                        final syllbaries = _syllbaries[index];
                        return Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: ListTile(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return TestPageDetail(
                                      headerBar: headerBar,
                                      strData: syllbaries.Word,
                                      strData2: syllbaries.Discription,
                                      isPositive: syllbaries.isPositive,
                                      list: _syllbaries,
                                    );
                                  },
                                ),
                              );
                            },
                            title: Text('${syllbaries.Word}'),
                          ),
                        );
                      },
                    );
                  });
            }),
          ],
        ),
      ),
    );
  }
}
