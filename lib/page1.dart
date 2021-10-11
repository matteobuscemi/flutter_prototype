import 'package:flutter/material.dart';
import 'package:mobileappliance_prototype/page2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () async {
        var navigationResult = await Navigator.push(context, new MaterialPageRoute(
            builder: (context) => Page2()
        ));
        if(navigationResult == 'from_back') {
          showDialog(context: context,
          builder: (context) => AlertDialog(title: Text('Navigation result back'),));
        }
        else if(navigationResult =='from_button') {
          showDialog(context: context,
          builder: (context) => AlertDialog(title: Text('Navigation from button')));
        }
      },),
      body: Container(
        child: Center(
          child: Text(
            'Dit is een flutter prototype!',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
      )
    );
  }

}