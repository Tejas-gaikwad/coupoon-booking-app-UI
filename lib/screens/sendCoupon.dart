import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:movie_ticket_booking_app/constants/const.dart';
import 'package:movie_ticket_booking_app/screens/homrScreen.dart';
import 'package:movie_ticket_booking_app/screens/viewCoupons.dart';

import '../constants/drawerScreen.dart';

class SendCouponScareen extends StatefulWidget {
  final couponCode;
  const SendCouponScareen({super.key, this.couponCode});

  @override
  State<SendCouponScareen> createState() => _SendCouponScareenState();
}

class _SendCouponScareenState extends State<SendCouponScareen> {
  late TextEditingController nameController;
  late TextEditingController numberController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController = TextEditingController();
    numberController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerScreen(),
      appBar: AppBar(
        backgroundColor: reddishColor,
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              SingCard(
                headline: "Your Name",
                hintText: "Max Kennel",
                controller: nameController,
              ),
              SizedBox(height: 40),
              SingCard(
                headline: "WhatsApp Number",
                hintText: "+56229309093",
                controller: numberController,
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ViewCouponsScreen();
                    },
                  ));
                },
                child: Container(
                  color: Colors.white,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("assets/Frame 2 (1).png"),
                      Text(
                        widget.couponCode == null
                            ? "Select coupon"
                            : widget.couponCode.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
              InkWell(
                onTap: () {
                  if (nameController.text.isEmpty ||
                      numberController.text.isEmpty ||
                      widget.couponCode == null) {
                    showDialog(
                      barrierDismissible: true,
                      barrierColor: Colors.grey.withOpacity(0.6),
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Colors.transparent,
                          content: Container(
                            padding: const EdgeInsets.all(20),
                            height: 150,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 20.0,
                                  offset: Offset(2.0, 2.0),
                                  spreadRadius: 3.0,
                                )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Please Fill all details",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300),
                                ),
                                SizedBox(height: 30),
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "OK",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    showDialog(
                      barrierDismissible: false,
                      barrierColor: Colors.grey.withOpacity(0.6),
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Colors.transparent,
                          content: Container(
                            padding: const EdgeInsets.all(20),
                            height: 150,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 20.0,
                                  offset: Offset(2.0, 2.0),
                                  spreadRadius: 3.0,
                                )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Coupon Code Succesfully sent! ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300),
                                ),
                                SizedBox(height: 30),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushAndRemoveUntil(context,
                                        MaterialPageRoute(
                                      builder: (context) {
                                        return HomeScreen();
                                      },
                                    ), (route) => false);
                                  },
                                  child: Text(
                                    "Back to home",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 06),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(25.0))),
                  child: Text(
                    "Send",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SingCard extends StatelessWidget {
  final headline;
  final hintText;
  final controller;
  const SingCard(
      {super.key,
      required this.headline,
      required this.hintText,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headline,
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: TextField(
              controller: controller,
              decoration:
                  InputDecoration(border: InputBorder.none, hintText: hintText),
            ),
          ),
        ],
      ),
    );
  }
}
