import 'package:stacked/stacked.dart';

class VerificationPageModel extends BaseViewModel {
  int _summa = 1234;
  int get value => _summa;

  void result(value) {
    print(value);
    _summa = value;
    notifyListeners();
  }
}
