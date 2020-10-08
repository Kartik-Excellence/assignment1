import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyList extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  bool isTitleTap = false;
  int titleINdex;

  List<String> title = <String>[
    'title-1',
    'title-2',
    'title-3',
    'title-4',
    'title-5'
  ];
  List<String> body = <String>[
    'body 1',
    'body 2',
    'body 3',
    'body 4',
    'body 5'
  ];

  bool isprintBody(int i, int j) {
    if (i == j) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home: Scaffold(
        appBar: AppBar(
          title: Text('MYLIst'),
        ),
        body: ListView.builder(
          itemCount: title.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  title: Text(
                    '${title[index]}',
                    style: TextStyle(
                        color: Colors.white, backgroundColor: Colors.red),
                  ),
                  onTap: () {
                    //print('ontapfires${title[index]}');
                    //print(title);
                    setState(() {
                      isTitleTap = true;
                    });
                    titleINdex = index;
                    //print('this title index$titleINdex');
                  },
                  subtitle: isprintBody(titleINdex, index)
                      ? Container(
                          child: Text(body[titleINdex],
                          style: TextStyle(backgroundColor: Colors.grey, color: Colors.black),
                          ),
                        )
                      : Container(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
