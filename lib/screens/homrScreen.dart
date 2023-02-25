import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:movie_ticket_booking_app/constants/const.dart';
import 'package:movie_ticket_booking_app/screens/myAccount.dart';
import 'package:movie_ticket_booking_app/screens/sendCoupon.dart';
import 'package:movie_ticket_booking_app/screens/viewCoupons.dart';

import '../constants/drawerScreen.dart';
import 'RedeemCodeScreen.dart';
import 'myPerformance.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerScreen(),
      appBar: AppBar(
        backgroundColor: reddishColor,
        elevation: 0.0,
        actions: const [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return SendCouponScareen();
                    },
                  ));
                },
                child: BlackCard(
                  firstHeadline: "Send",
                  secondHeadline: "Coupon Code",
                ),
              ),
              SizedBox(height: 50),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return RedeemCodeScreen();
                    },
                  ));
                },
                child: BlackCard(
                  firstHeadline: "Redeem",
                  secondHeadline: "Coupon Code",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BlackCard extends StatelessWidget {
  final firstHeadline;
  final secondHeadline;
  const BlackCard(
      {super.key, required this.firstHeadline, required this.secondHeadline});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(16.0)),
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            firstHeadline,
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            secondHeadline,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
