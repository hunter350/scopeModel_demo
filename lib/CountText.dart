import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'MyModel.dart';

class CountText extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<MyModel>(
        builder : (BuildContext inContext, Widget inChild,
            MyModel inModel){
          return Text(
            '${inModel.count.toString()}',
            style: Theme
                .of(context)
                .textTheme
                .headline4,
          );
        }

    );
  }
}