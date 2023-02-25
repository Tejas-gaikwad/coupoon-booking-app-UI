import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:movie_ticket_booking_app/constants/const.dart';
import 'package:movie_ticket_booking_app/constants/drawerScreen.dart';

import 'homrScreen.dart';

class ValidInvalidScreen extends StatefulWidget {
  final status;
  const ValidInvalidScreen({
    super.key,
    required this.status,
  });

  @override
  State<ValidInvalidScreen> createState() => _ValidInvalidScreenState();
}

class _ValidInvalidScreenState extends State<ValidInvalidScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerScreen(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: widget.status == true ? reddishColor : greyishColor,
      ),
      body: SafeArea(
        child: Container(
          color: widget.status == true ? reddishColor : greyishColor,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset("assets/Frame 2.png"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 1.6,
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.status == true ? "Valid" : "InValid",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Text(
                          widget.status == true
                              ? "The code has been succesfully redeemed"
                              : "Validity of the coupon ocde is expired",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Text(
                          widget.status == true ? "c2345#098" : "c2345#0898",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: reddishColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(height: 30),
                        const Text(
                          "Happy Hours : Buy 3 - Get 1 Free - All Day on Meals",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          "Coupon Details",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          "Applicable on meals only Valid till 23-02-2023",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 60),
                  InkWell(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                        builder: (context) {
                          return HomeScreen();
                        },
                      ), (route) => false);
                    },
                    child: Text(
                      "Back to home",
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
