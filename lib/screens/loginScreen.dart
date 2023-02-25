import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constants/const.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: reddishColor,
        child: Stack(
          alignment: Alignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/Frame 2.png",
              height: 600,
              width: 350,
              fit: BoxFit.cover,
            ),
            LoginInsideContent(),
          ],
        ),
      )),
    );
  }
}

class LoginInsideContent extends StatelessWidget {
  const LoginInsideContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Log In",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Image.asset(
          "assets/pngwing 1.png",
          height: 100,
          width: 100,
          fit: BoxFit.cover,
        ),
        TextAndTextField(headLine: "Your Name"),
        SizedBox(height: 16),
        TextAndTextField(headLine: "Password"),
        SizedBox(height: 40),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Colors.black,
          ),
          child: Text(
            "Log in",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}

class TextAndTextField extends StatelessWidget {
  final headLine;
  const TextAndTextField({super.key, required this.headLine});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(headLine),
          SizedBox(height: 16),
          Container(
            width: MediaQuery.of(context).size.width / 1.5,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                )),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
