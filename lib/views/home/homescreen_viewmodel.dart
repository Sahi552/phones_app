import 'package:flutter/material.dart';
import 'package:phones_app/views/home/widgets/banners/banner1.dart';
import 'package:phones_app/views/home/widgets/banners/banner2.dart';
import 'package:phones_app/views/home/widgets/banners/banner3.dart';
import 'package:phones_app/views/home/widgets/banners/banner4.dart';
import 'package:phones_app/views/home/widgets/banners/banner5.dart';
import 'package:stacked/stacked.dart';

class HomescreenViewmodel extends BaseViewModel {
  List<Widget> _banners = [];
  int _currentindex = 0;

  int get currentIndex => _currentindex;
  List<Widget> get banners => _banners;

  void updateIndex(int index) {
    _currentindex = index;
    notifyListeners();
  }

  void fetchBanner() {
    _banners = [
      Banner1(),
      Banner2(),
      Banner3(),
      Banner4(),
      Banner5(),
    ];
    notifyListeners();
  }
}
