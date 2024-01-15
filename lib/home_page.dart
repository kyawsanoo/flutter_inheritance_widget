import 'package:flutter/material.dart';

import 'app_data_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    AppDataProvider? appDataProvider = AppDataProvider.of(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: appDataProvider?.appData.backgroundColor,
          child: Center(
            child: Column(
              children: [
                Text( appDataProvider!.appData.count.toString(), style: const TextStyle(
                    color: Colors.white, fontSize: 24
                ),  ),
                ElevatedButton(onPressed: () {
                  setState(() {
                    appDataProvider.appData.incrementCount();
                  });
                } ,
                    child: const Text('Increment')),
                ElevatedButton(onPressed: () {
                  setState(() {
                    appDataProvider.appData.changeBackgroundColor(Colors.purple);
                  });
                } ,
                    child: const Text('Change Color'))
              ],
            ),
          ),
        ),
      ) ,
    ) ;
  }

}

