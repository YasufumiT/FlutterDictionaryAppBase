import 'package:flutter/material.dart';
import 'package:flutter_firestore_test/data/dialect_list.dart';
import 'package:flutter_firestore_test/pages/test_page_detail.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_firestore_test/providers/firestore_provider.dart';
import 'package:flutter_firestore_test/pages/page3_detail.dart';

final inputValueProvider = StateProvider.autoDispose(((ref) {
  return TextEditingController(text: '');
}));

final onSearchProvider = StateProvider((ref) => false);

class Page2 extends ConsumerWidget {
  const Page2({Key? key, this.headerBar}) : super(key: key);
  final AppBar? headerBar;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController inputValue = ref.watch(inputValueProvider);
    var _searchDialectList = ref.watch(searchDirectsListProvider);

    return Scaffold(
      appBar: headerBar,
      body: Column(
        children: [
          Container(
            child: TextFormField(
              controller: inputValue,
              onFieldSubmitted: (inputValue) async {
                print("enter pushed!!!");
                // await ref.read(searchDirectsListProvider(inputValue));
                await ref
                    .read(searchDirectsListProvider.notifier)
                    .searchDirects(inputValue);
              },
              decoration: InputDecoration(
                icon: IconButton(
                  icon: Icon(Icons.search_outlined),
                  onPressed: () async {
                    // ref.read(searchDirectsListProvider(inputValue.text));
                    await ref
                        .read(searchDirectsListProvider.notifier)
                        .searchDirects(inputValue.text);
                  },
                ),
                labelText: 'キーワードを入力ください!',
              ),
            ),
          ),
          Container(
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: _searchDialectList.length,
              itemBuilder: (context, index) {
                //五十音ソート
                _searchDialectList.sort((a, b) => a.Word.compareTo(b.Word));
                return Card(
                  child: ListTile(
                    minVerticalPadding: 30,
                    title: Text(_searchDialectList[index].Word),
                    subtitle: Text(_searchDialectList[index].Discription),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return TestPageDetail(
                              headerBar: headerBar,
                              strData: _searchDialectList[index].Word,
                              strData2: _searchDialectList[index].Discription,
                              isPositive: _searchDialectList[index].isPositive,
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
        ],
      ),
    );
  }
}
