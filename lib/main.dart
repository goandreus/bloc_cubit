import 'package:bloc_cubit/pages/weather_search_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WeatherSearchPage(),
    );
  }
}

class MyChangeNotifier extends ChangeNotifier {
  int fieldd1;
  String field2;

  void changeState() {
    field2 = 'New Value';
    notifyListeners();
  }
}
