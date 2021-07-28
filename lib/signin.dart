import 'package:flutter/material.dart';
import 'package:layout/custom_widget/sign_in_button.dart';
import 'package:layout/custom_widget/social_sign_in_button.dart';

import 'custom_widget/custom_raised_button.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BrainyChatBot'),
        centerTitle: true,
      ),
      body: buildContent(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget buildContent() {
    return Padding(
      padding: const EdgeInsets.all(25.0),
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
            SocialSignInButton(
              text: 'Sign in with Google',
              textColor: Colors.black87,
              color: Colors.white,
              borderRadius: 4.0,
              onPressed: () {},
              height: 50.0,
              assetName: 'assets/google.png',

            ),

            SizedBox(
              height: 8.0,
            ),
            SocialSignInButton(
              text: 'Sign in with Facebook',
              textColor: Colors.white,
              color: Color(0xFF334D92),
              borderRadius: 4.0,
              onPressed: () {},
              height: 50.0,
              assetName: 'assets/facebook.png',

            ),

            SizedBox(
              height: 8.0,
            ),
            SocialSignInButton(
              text: 'Sign in with Email',
              textColor: Colors.white,
              color: Colors.green,
              borderRadius: 4.0,
              onPressed: () {},
              height: 50.0,
              assetName: 'assets/email.jpeg',

            ),



            SizedBox(
              height: 8.0,
            ),
            Text(
              'or',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8.0,
            ),
            SocialSignInButton(
              text: 'Sign in with Github',
              textColor: Colors.white,
              color: Color(0xFF757575),
              borderRadius: 4.0,
              onPressed: () {},
              height: 50.0,
              assetName: 'assets/github.png',
            ),
          ],
        ),
      ),
    );
  }
}
