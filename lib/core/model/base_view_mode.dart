import 'package:flutter/material.dart';

enum ViewStatus { idle, busy }

class BaseViewModel extends ChangeNotifier {
  ViewStatus _status = ViewStatus.idle;
  ViewStatus get status => _status;
  bool get isBusy => _status == ViewStatus.busy;
  void setBusy(ViewStatus value) {
    _status = value;
    notifyListeners();
  }
}