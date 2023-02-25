import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                "assets/Frame 2 (1).png",
                height: 200,
                width: 350,
                fit: BoxFit.cover,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "C",
                    style: TextStyle(color: Colors.white, fontSize: 150),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "oupon",
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      ),
                      Text(
                        "ode",
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
