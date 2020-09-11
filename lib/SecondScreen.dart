import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'CountText.dart';
import 'MyModel.dart';
import 'main.dart';

class SecondScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScopedModel<MyModel>(
      model:  myModel,
//Закометировал, чтобы появлялась кнопка назад!
    //Это можно удалить
//      child: MaterialApp(
//
//          title: 'Flutter Demo1',
//          theme: ThemeData(
//
//            primarySwatch: Colors.blue,
//            visualDensity: VisualDensity.adaptivePlatformDensity,
//          ),
//          home:Scaffold(
      child: Scaffold(
            appBar: AppBar(
              title: Text('SecondScreen'),
            ),
            body: Center(

              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'You have pushed the button this many times:',
                  ),

                  CountText(),
                  RaisedButton(
                    child: Text(
                      'First',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                     // Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                    },
                    color: Colors.lightBlueAccent,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                    elevation: 8.0,
                  ),

                ],
              ),
            ),
              floatingActionButton: ScopedModelDescendant<MyModel>(
                builder: (BuildContext inContext, Widget inChild,
                    MyModel inModel) {
                  return FloatingActionButton(
                    onPressed: inModel.increment,
                    tooltip: 'Increment',
                    child: Icon(Icons.add),
                  );
                },
              ),
          ),
      // ),
    );

  }
}
