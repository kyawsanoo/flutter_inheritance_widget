import 'package:flutter/material.dart';

import 'app_data.dart';

class AppDataProvider  extends InheritedWidget {
  final AppData appData;
  final Widget child;

  const AppDataProvider({super.key, required this.appData, required this.child}): super(child: child);

  static AppDataProvider? of (BuildContext context) => context.dependOnInheritedWidgetOfExactType<AppDataProvider>();

  @override
  bool updateShouldNotify(covariant AppDataProvider oldWidget) {
    return true;
  }
}