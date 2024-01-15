import 'dart:ui';

class AppData {
  int count;
  Color backgroundColor;

  AppData({required this.count, required this.backgroundColor});

  incrementCount() {
    count++;
  }

  changeBackgroundColor (Color bgColor) {
    backgroundColor = bgColor;
  }
}