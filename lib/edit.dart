import 'package:flutter/material.dart';

class EditPage extends StatelessWidget {
//  @override
//  _EditPageState createState() => _EditPageState();
  String todos;

  EditPage({Key key, @required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<bool> _onWillPop() {
      Navigator.pop(context,'this is it');
      return new Future.value(false);
    }
    // TODO: implement build
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          title: Text(' To-Do $todos'),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                child: TextFormField(
                  initialValue: todos,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  color: Colors.grey,
//                color: Colors.red,
                  onPressed: () {},
                  child: Text('捨棄'),
                ),
                RaisedButton(
                  color: Colors.blue,
                  onPressed: () {},
                  child: Text('確認'),
                )
              ],
            )
          ],
        ),
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
