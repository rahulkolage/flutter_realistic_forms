import 'package:flutter/material.dart';
import './../screens/home_material.dart';
// import './screens/home_cupertino.dart';

class App extends StatelessWidget {
  // const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forms',
      home: HomeMaterial(),
      // home: HomeCupertino(),
    );
  }
}
