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
  var androidVersionNames = ['Nougat', 'Oreo', 'Pie'];

  @override
  Widget build(BuildContext context) {
    Future navigateToSubPage(todos, position) async {
      String message = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EditPage(
            todos: todos,
          ),
        ),
      );
      setState(() {
        androidVersionNames[position] = message;
      });
      Scaffold.of(context).showSnackBar(
        new SnackBar(
          content: new Text(message),
        ),
      );
      print(message);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: ListView.builder(
        itemBuilder: (context, position) {
          return GestureDetector(
            onTap: () {
              navigateToSubPage(androidVersionNames[position], position);
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(androidVersionNames[position]),
              ),
            ),
          );
        },
        itemCount: androidVersionNames.length,
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditPage(),
            ),
          );
        },
//        tooltip: 'Increment',
      child: Icon(Icons.add),
    ),
  );
}

//import 'package:flutter/foundation.dart';
//import 'package:flutter/material.dart';
//
//class Todo {
//  final String title;
//  final String description;
//
//  Todo(this.title, this.description);
//}
//
//void main() {
//  runApp(MaterialApp(
//    title: 'Passing Data',
//    home: TodosScreen(
//      todos: List.generate(
//        20,
//            (i) => Todo(
//          'Todo $i',
//          'A description of what needs to be done for Todo $i',
//        ),
//      ),
//    ),
//  ));
//}
//
//class TodosScreen extends StatelessWidget {
//  final List<Todo> todos;
//
//  TodosScreen({Key key, @required this.todos}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Todos'),
//      ),
//      body: ListView.builder(
//        itemCount: todos.length,
//        itemBuilder: (context, index) {
//          return ListTile(
//            title: Text(todos[index].title),
//            // When a user taps the ListTile, navigate to the DetailScreen.
//            // Notice that you're not only creating a DetailScreen, you're
//            // also passing the current todo through to it.
//            onTap: () {
//              Navigator.push(
//                context,
//                MaterialPageRoute(
//                  builder: (context) => DetailScreen(todo: todos[index]),
//                ),
//              );
//            },
//          );
//        },
//      ),
//    );
//  }
//}
//
//class DetailScreen extends StatelessWidget {
//  // Declare a field that holds the Todo.
//  final Todo todo;
//
//  // In the constructor, require a Todo.
//  DetailScreen({Key key, @required this.todo}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    // Use the Todo to create the UI.
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(todo.title),
//      ),
//      body: Padding(
//        padding: EdgeInsets.all(16.0),
//        child: Text(todo.description),
//      ),
//    );
//  }
//}
