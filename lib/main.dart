import 'package:flutter/material.dart';
import './app_screens/home.dart';

void main() => runApp(MyFlutterApp());

class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Exploring UI widgets",
        home: Scaffold(body:getListView() ));
  }

  Widget getListView() {
    var listView = ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("landscape"),
          subtitle: Text("Beautiful View"),
          trailing: Icon(Icons.wb_sunny),
          onTap: () => debugPrint("landscape tapped"),),
        ListTile(
          leading: Icon(Icons.laptop_chromebook),
          title: Text("Windows"),),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text("Phone"),),
        Text("Yet another element in list"),
        Container(color: Colors.red,height: 50.0,)
      ],
    );
    return listView;
  }
}