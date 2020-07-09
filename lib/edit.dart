import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
//  @override
//  _EditPageState createState() => _EditPageState();
  String todos;

  EditPage({Key key, @required this.todos}) : super(key: key);

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  var myController;

  @override
  void initState() {
//    myController.addListener(_printLatestValue);
  }

  _printLatestValue() {
    widget.todos = '${myController.text}';
  }

  @override
  Widget build(BuildContext context) {
    Future<bool> _onWillPop() {
      Navigator.pop(context, myController.text);
      return new Future.value(false);
    }

//    myController.addListener(_printLatestValue);
    // TODO: implement build
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          title: Text(' To-Do ${widget.todos}'),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                child: TextFormField(
//                  initialValue: todos,
//                  onEditingComplete: todos = myController.text,
                  controller: myController =
                      TextEditingController(text: widget.todos),
                ),
              ),
            ),
//            Row(
//              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//              children: <Widget>[
//                RaisedButton(
//                  color: Colors.grey,
////                color: Colors.red,
//                  onPressed: () {},
//                  child: Text('捨棄'),
//                ),
//                RaisedButton(
//                  color: Colors.blue,
//                  onPressed: () {},
//                  child: Text('確認'),
//                )
//              ],
//            )
          ],
        ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                color: Colors.grey,
//                color: Colors.red,
                onPressed: (){},
                child: Text('捨棄'),
              ),
              RaisedButton(
                color: Colors.blue,
                onPressed: (){
                  Navigator.pop(context,'hey!!');
                },
                child: Text('確認'),
              )
            ],
          )
        ],
      ),
    );
  }
}

//class _EditPageState extends State<EditPage> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('new To-Do'),
//      ),
//      body: Column(
//        children: <Widget>[
//          Padding(
//            padding: const EdgeInsets.all(8.0),
//
//            child: Container(
//              height: 200,
//
//              child: TextFormField(
//
//              ),
//            ),
//          ),
//
//          Row(
//            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//            children: <Widget>[
//              RaisedButton(
//                color: Colors.grey,
////                color: Colors.red,
//                onPressed: (){},
//                child: Text('捨棄'),
//              ),
//              RaisedButton(
//                color: Colors.blue,
//                onPressed: (){},
//                child: Text('確認'),
//              )
//            ],
//          )
//        ],
//      ),
//    );
//  }
//}
