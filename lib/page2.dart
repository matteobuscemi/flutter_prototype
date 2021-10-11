import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
   var email, password;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async {
        _popNavigationWithResult(context, 'from_back');
        return false;
      },
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            _popNavigationWithResult(context, 'from_button');
          },
        ),
        appBar: AppBar(title: Text('Flutter Forms'),),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(children: <Widget>[
              TextFormField(
                decoration: InputDecoration(hintText: 'Email'),
                validator: (value) {
                  if(value!.trim().isEmpty) {
                    return 'Email required';
                  }
                  if(value.contains("@")) {
                    print('Valid email');
                  }
                  else {
                    return 'Invalid email';
                  }
                  email = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if(value!.trim().isEmpty) {
                    return 'Password required';
                  }
                  if (value.length < 8) {
                    return 'Password needs to be atleast 8 characters';
                  }
                  password = value;
                },
              ),
              RaisedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    print('The form is valid');
                    print('Email: '+email);
                    print('Password: '+password);
                  }
                },
                child: Text('Submit'),
              )
            ]),
          ),
        ),
      ),
    );
  }

  void _popNavigationWithResult(BuildContext context, dynamic result) {
    Navigator.pop(context, result);
  }
}