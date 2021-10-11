import 'package:flutter/material.dart';
import 'package:mobileappliance_prototype/page1.dart';


void main() => runApp(FlutterPrototype());

class FlutterPrototype extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Prototype',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Page1(),
    );
  }

}