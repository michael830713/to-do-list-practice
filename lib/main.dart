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
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(androidVersionNames[position]),
              ),
            );
          },
          itemCount: androidVersionNames.length,
        )
//            Container(
//              height: 50,
//              color: Colors.amber[600],
//              child: const Center(child: Text('Entry A')),
//            ),
//            Container(
//              height: 50,
//              color: Colors.amber[500],
//              child: const Center(child: Text('Entry B')),
//            ),
//            Container(
//              height: 50,
//              color: Colors.amber[100],
//              child: const Center(child: Text('Entry C')),
//            ),
        ,
        // Column is also layout widget. It takes a list of children and
        // arranges them vertically. By default, it sizes itself to fit its
        // children horizontally, and tries to be as tall as its parent.
        //
        // Invoke "debug painting" (press "p" in the console, choose the
        // "Toggle Debug Paint" action from the Flutter Inspector in Android
        // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
        // to see the wireframe for each widget.
        //
        // Column has various properties to control how it sizes itself and
        // how it positions its children. Here we use mainAxisAlignment to
        // center the children vertically; the main axis here is the vertical
        // axis because Columns are vertical (the cross axis would be
        // horizontal).
      ),
      floatingActionButton: FloatingActionButton(

        onPressed: () {
          Navigator.pushNamed(context, '/second');
        },
//        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
