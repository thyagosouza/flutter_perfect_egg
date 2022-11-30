import 'dart:async';

import 'package:flutter/material.dart';

class AppBloc extends ChangeNotifier {
  late Timer timer;
  String state = 'stopped';
  String selected = 'soft';
  double time = 0.1 * 60.0;
  double seconds = 0;
  double percent = 0;

  void updateTime() {
    seconds++;
    percent = (seconds * 100) / time;
    notifyListeners();
    if (seconds == time) done();
  }

  select(String type) {
    switch (type) {
      case 'soft':
        {
          selected = 'soft';
          time = 5.0 * 60.0;
          notifyListeners();
          return;
        }
        break;
      case 'medium':
        {
          selected = 'medium';
          time = 7.0 * 60.0;
          notifyListeners();
          return;
        }
        break;
      case 'hard':
        {
          selected = 'hard';
          time = 10.0 * 60.0;
          notifyListeners();
          return;
        }
      default:
        {
          time = 5.0 * 60.0;
          notifyListeners();
          return;
        }
    }
  }

  void start() {
    state = 'cooking';
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) => updateTime());
    notifyListeners();
  }

  void stop() {
    timer.cancel();
    state = 'stopped';
    seconds = 0;
    percent = 0;
    notifyListeners();
  }

  void done() {
    timer.cancel();
    state = 'done';
    seconds = 0;
    percent = 0;
    notifyListeners();
  }

  void reset() {
    stop();
  }
}
