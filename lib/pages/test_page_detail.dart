import 'package:flutter/material.dart';
import 'package:flutter_firestore_test/data/dialect_list.dart';

class TestPageDetail extends StatelessWidget {
  final String strData;
  final String strData2;
  final bool isPositive;
  final AppBar? headerBar;
  final List<DialectList>? list;
  const TestPageDetail({
    Key? key,
    required this.strData,
    required this.strData2,
    required this.isPositive,
    this.headerBar,
    this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int num = list!.indexOf(
      DialectList(Discription: strData2, Word: strData, isPositive: isPositive),
    );
    return Scaffold(
      appBar: headerBar,
      body: Center(
        child: Column(
          children: [
            Center(
              child: Text(strData2),
            ),
            Container(
              child: GestureDetector(
                  onTap: () {
                    // int num = list!.indexOf(
                    //   DialectList(
                    //       Discription: strData2,
                    //       Word: strData,
                    //       isPositive: isPositive),
                    // );
                    print("onTap called.");
                    print(list!.indexOf(DialectList(
                        Discription: strData2,
                        Word: strData,
                        isPositive: isPositive)));
                    print("indexWhere:" +
                        list!
                            .indexWhere(
                                ((element) => list!.indexOf(element) == num))
                            .toString());
                    print("indexItem:" + list!.elementAt(num + 1).toString());

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return TestPageDetail(
                            strData2: list!.elementAt(num + 1).Discription,
                            strData: list!.elementAt(num + 1).Word,
                            isPositive: list!.elementAt(num + 1).isPositive,
                            headerBar: headerBar,
                          );
                        },
                      ),
                    );
                  },
                  child: Text("つぎは" + list!.elementAt(num + 1).Word)),
            ),
          ],
        ),
      ),
    );
  }
}
