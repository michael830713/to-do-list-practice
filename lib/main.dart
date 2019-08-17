import 'package:flutter/material.dart';
import 'edit.dart';
import 'package:flutter/foundation.dart';
import 'dart:developer' as developer;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      initialRoute: 'a',
      routes: {
        '/a': (BuildContext context) => MyHomePage(),
        '/second': (BuildContext context) => EditPage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'To-Do List'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    var androidVersionNames = ['a', 'b', 'c'];
    return Scaffold(
      appBar: AppBar(
        title: Text('todo list'),
      ),
      body: Center(
          child: ListView.builder(
        itemBuilder: (context, position) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(androidVersionNames[position]),
            ),
          );
        },
        itemCount: androidVersionNames.length,
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateAndDisplaySelection(context);
//          Navigator.pushNamed(context, '/second');
        },
//        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

int _counter = 0;
bool state = false;
var result;

_navigateAndDisplaySelection(BuildContext context) async {
  // Navigator.push returns a Future that completes after calling
  // Navigator.pop on the Selection Screen.
  result = await Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => EditPage()),
  );

  // After the Selection Screen returns a result, hide any previous snackbars
  // and show the new result.
  print('this is me');
  debugPrint('this is me');

  developer.log('log me', name: 'my.app.category');

  Scaffold.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text("$result")));
}

@override
Widget build(BuildContext context) {
  var androidVersionNames = ['a', 'b', 'c'];
  return Scaffold(
    appBar: AppBar(
      title: Text('todo list'),
    ),
    body: Center(
        child: ListView.builder(
      itemBuilder: (context, position) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(androidVersionNames[position]),
          ),
        );
      },
      itemCount: androidVersionNames.length,
    )),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        _navigateAndDisplaySelection(context);
//          Navigator.pushNamed(context, '/second');
      },
//        tooltip: 'Increment',
      child: Icon(Icons.add),
    ),
  );
}
