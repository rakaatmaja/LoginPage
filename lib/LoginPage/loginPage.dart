import 'package:flutter/material.dart';

import './verificationFields.dart';
import './loginButton.dart';
import './signupPage.dart';
import './loginDecoration.dart';
import '../Animation/FadeAnimation.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _pageLogin = true;

  void _togglePage(bool _switchme) {
    setState(
      () {
        _pageLogin = _switchme;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              LoginDecoration(),
              FadeAnimation(
                0.5,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      color: _pageLogin ? Color.fromRGBO(143, 148, 251, 1) : Colors.transparent,
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: _pageLogin ? Colors.white : Color.fromRGBO(143, 148, 251, 1),
                        ),
                      ),
                      onPressed: () {
                        _togglePage(true);
                      },
                    ),
                    FlatButton(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      color: _pageLogin ? Colors.transparent : Color.fromRGBO(143, 148, 251, 1),
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                          color: _pageLogin ? Color.fromRGBO(143, 148, 251, 1) : Colors.white,
                        ),
                      ),
                      onPressed: () {
                        _togglePage(false);
                      },
                    ),
                  ],
                ),
              ),
              _pageLogin
                  ? Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                        children: <Widget>[
                          VerificationFields(),
                          SizedBox(
                            height: 30,
                          ),
                          LoginButton(),
                          SizedBox(
                            height: 10,
                          ),
                          FadeAnimation(
                            0.5,
                            FlatButton(
                              highlightColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              child: Text(
                                "Forgot Password",
                                style: TextStyle(
                                  color: Color.fromRGBO(143, 148, 251, 1),
                                ),
                              ),
                              onPressed: () => {},
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // FadeAnimation(
                          //   0.5,
                          //   Row(
                          //     mainAxisAlignment: MainAxisAlignment.center,
                          //     children: <Widget>[
                          //       Text(
                          //         "New User?",
                          //       ),
                          //       FlatButton(
                          //         highlightColor: Colors.transparent,
                          //         splashColor: Colors.transparent,
                          //         child: Text(
                          //           "Sign Up",
                          //           style: TextStyle(
                          //             color: Color.fromRGBO(143, 148, 251, 1),
                          //           ),
                          //         ),
                          //         onPressed: () => {},
                          //       ),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                    )
                  : SignupPage()
            ],
          ),
        ),
      ),
    );
  }
}
