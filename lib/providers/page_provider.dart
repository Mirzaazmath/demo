import 'package:flutter/cupertino.dart';

class PageProvider extends ChangeNotifier{
  int _page = 0;
  get page=>_page;
  void  updatepage(int newpage){


    _page = newpage;
    notifyListeners();
  }
}