import 'package:flutter/material.dart';
import './app_screens/home.dart';

void main() => runApp(MyFlutterApp());

class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Exploring UI widgets",
        home: Scaffold(
          body: getListView(),
          appBar: AppBar(
            title: Text("Basic List View"),
          ),
        ));
  }

  List<String> getListElements() {
    return List<String>.generate(20, (index) => "Item $index");
  }

  Widget getListView() {
    var listItems = getListElements();
    var listView = ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        leading: Icon(Icons.arrow_right),
        title: Text(listItems[index]),
        onTap: () {
          debugPrint('${listItems[index]} was tapped');
        },
      );
    });
    return listView;
  }
}
