import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:phones_app/views/home/homescreen_view.dart';
import 'package:stacked/stacked.dart';

@injectable
class Splashviewmodel extends BaseViewModel {
  final BuildContext _context;

  Splashviewmodel(this._context);

  void timer()  {
    Future.delayed(Duration(seconds: 5));
    Navigator.push(
      _context,
      MaterialPageRoute(
        builder: (context) => HomescreenView(),
      ),
    );
  }
}
