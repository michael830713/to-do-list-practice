import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('new To-Do'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),

            child: Container(
              height: 200,

              child: TextFormField(

              ),
            ),
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
