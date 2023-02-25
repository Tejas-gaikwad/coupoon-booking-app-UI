import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:movie_ticket_booking_app/constants/const.dart';
import 'package:movie_ticket_booking_app/constants/drawerScreen.dart';
import 'package:movie_ticket_booking_app/screens/validInavlidScreen.dart';

class RedeemCodeScreen extends StatefulWidget {
  const RedeemCodeScreen({super.key});

  @override
  State<RedeemCodeScreen> createState() => _RedeemCodeScreenState();
}

class _RedeemCodeScreenState extends State<RedeemCodeScreen> {
  late TextEditingController numberController;
  late TextEditingController couponCodeController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    numberController = TextEditingController();
    couponCodeController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerScreen(),
      appBar: AppBar(
        backgroundColor: reddishColor,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              SingCard(
                controller: numberController,
                headline: "registered Number",
                hintText: "",
              ),
              SizedBox(height: 50),
              SingCard(
                controller: couponCodeController,
                headline: "Coupon Code",
                hintText: "",
              ),
              SizedBox(height: 50),
              InkWell(
                onTap: () {
                  if (couponCodeController.text.isEmpty ||
                      numberController.text.isEmpty) {
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
                      barrierDismissible: true,
                      barrierColor: Colors.grey.withOpacity(0.6),
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Colors.transparent,
                          content: Container(
                            padding: const EdgeInsets.all(20),
                            height: 250,
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
                                  "Verify the phone number",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300),
                                ),
                                SizedBox(height: 30),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      height: 50,
                                      width: 50,
                                      color: Colors.grey.withOpacity(0.2),
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        maxLength: 1,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          counterText: "",
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      height: 50,
                                      width: 50,
                                      color: Colors.grey.withOpacity(0.2),
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        maxLength: 1,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          counterText: "",
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      height: 50,
                                      width: 50,
                                      color: Colors.grey.withOpacity(0.2),
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        maxLength: 1,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          counterText: "",
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      height: 50,
                                      width: 50,
                                      color: Colors.grey.withOpacity(0.2),
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        maxLength: 1,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          counterText: "",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return ValidInvalidScreen(
                                          status: false,
                                        );
                                      },
                                    ));
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 08),
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(25.0)),
                                    child: Text(
                                      "Verify",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 05),
                                Text(
                                  "Resend OTP",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline),
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
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 08),
                  child: Text("Verify"),
                ),
              ),
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
