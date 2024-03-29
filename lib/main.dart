import 'package:flutter/material.dart';

import 'app_data.dart';
import 'app_data_provider.dart';
import 'home_page.dart';

void main() {
  runApp(
      AppDataProvider(appData: AppData(count: 5, backgroundColor: Colors.black) , child: const MyApp() )

  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
