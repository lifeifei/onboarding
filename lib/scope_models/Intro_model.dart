import 'package:scoped_model/scoped_model.dart';

class IntroModel extends Model {
  int _pageIndex = 0;

  int get pageIndex => _pageIndex;

  void goToPage(int index) {
    print("====page index:" + index.toString());
    // First, increment the counter
    _pageIndex = index;

    // Then notify all the listeners.
    notifyListeners();
  }
}