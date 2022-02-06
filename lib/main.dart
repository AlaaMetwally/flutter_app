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
            title: Text("Long List View"),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => debugPrint("FAB clicked"),
            child: Icon(Icons.add),
            tooltip: 'Add one more Item',
          ),
        ));
  }

  List<String> getListElements() {
    return List<String>.generate(20, (index) => "Item $index");
  }

  void showSnackBar(BuildContext context, String item) {
    var snackBar = SnackBar(
      content: Text("you just tapped item $item"),
      action: SnackBarAction(
        label: "UNDO",
        onPressed: () => debugPrint('Performing dummy UNDO operation'),
      ),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }

  Widget getListView() {
    var listItems = getListElements();
    var listView = ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        leading: Icon(Icons.arrow_right),
        title: Text(listItems[index]),
        onTap: () {
          showSnackBar(context, listItems[index]);
        },
      );
    });
    return listView;
  }
}
