import 'package:flutter/material.dart';
import 'edit.dart';

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

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var androidVersionNames = ['a', 'b', 'c'];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: ListView.builder(
        itemBuilder: (context, position) {
          return GestureDetector(
            onTap: () {
              navigateToSubPage(context, androidVersionNames[position]);
//              Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                    builder: (context) => EditPage(todos: androidVersionNames[position],),
//                  ));
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
              ));
        },
//        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }

  Future navigateToSubPage(context, todos) async {
    String message = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => EditPage(
                  todos: todos,
                )));
    Scaffold.of(context).showSnackBar(
      new SnackBar(
        content: new Text(message),
      ),
    );
    print(message);
  }
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
