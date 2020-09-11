import 'package:scoped_model/scoped_model.dart';

class MyModel extends Model {
  int _count = 0;
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

final myModel = MyModel();