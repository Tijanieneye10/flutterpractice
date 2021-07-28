import 'package:flutter/material.dart';

import 'custom_widget/custom_raised_button.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        centerTitle: true,
      ),
      body: buildContent(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget buildContent() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Login',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            CustomRaisedButton(
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                ),
              ),
              color: Colors.white,
              borderRadius: 4.0,
              onPressed: (){
                print('Hello world');
              },
            ),
            SizedBox(
              height: 8.0,
            ),
            CustomRaisedButton(
              child: Text(
                'Sign in with Facebook',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              color: Colors.blue,
              borderRadius: 4.0,
              onPressed: (){
                print('Hello world');
              },
            ),
          ],
        ),
      ),
    );
  }
}
