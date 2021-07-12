import 'package:flutter/material.dart';
import 'package:flutter_time_tracker/app/sign_in_button.dart';
import 'package:flutter_time_tracker/app/social_sign_in_button.dart';
import 'package:flutter_time_tracker/common_widgets/custom_raised_button.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Time Tracker'),
        elevation: 2,
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Sign in',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 48),
          SocialSignInButton(
            assetName: 'images/google-logo.png',
            text: 'Sign in With Google',
            textColor: Colors.black87,
            color: Colors.white,
            onPressed: () {},
          ),
          SizedBox(height: 8),
          SocialSignInButton(
            assetName: 'images/facebook-logo.png',
            text: 'Sign in With Facebook',
            textColor: Colors.white,
            color: Color(0xff334D92),
            onPressed: () {},
          ),
          SizedBox(height: 8),
          SignInButton(
            text: 'Sign in With Email',
            textColor: Colors.white,
            color: Colors.teal,
            onPressed: () {},
          ),
          SizedBox(height: 8),
          Text(
            'or',
            style: TextStyle(fontSize: 14, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8),
          SignInButton(
            text: 'Go anonymous',
            textColor: Colors.black,
            color: Colors.lime,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
