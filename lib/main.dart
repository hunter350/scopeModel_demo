import 'package:flutter/material.dart';

import 'package:scoped_model/scoped_model.dart';
import 'CountText.dart';
import 'MyModel.dart';
import 'SecondScreen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(

      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: MyHomePage(),
  ));
}


class MyHomePage extends StatelessWidget {
    @override
  Widget build(BuildContext context) {

    return ScopedModel<MyModel>(
      model: myModel,
      child: Scaffold(
        appBar: AppBar(

          title: Text('FirstScreen'),
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
                  'Second',
                  style: TextStyle(fontSize: 30),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
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
    );
  }
}

