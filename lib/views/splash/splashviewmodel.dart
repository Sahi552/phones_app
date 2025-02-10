import 'package:stacked/stacked.dart';

class Splashviewmodel extends BaseViewModel {
  int _value = 0;

  int get value => _value;

  void increment() {
    _value++;
    notifyListeners();
  }
}
