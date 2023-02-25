import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:movie_ticket_booking_app/constants/backConstatnt.dart';
import 'package:movie_ticket_booking_app/constants/const.dart';
import 'package:movie_ticket_booking_app/screens/sendCoupon.dart';

import '../constants/drawerScreen.dart';

class ViewCouponsScreen extends StatefulWidget {
  const ViewCouponsScreen({super.key});

  @override
  State<ViewCouponsScreen> createState() => _ViewCouponsScreenState();
}

class _ViewCouponsScreenState extends State<ViewCouponsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerScreen(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: greyishColor,
      ),
      body: SafeArea(
        child: Container(
          color: greyishColor,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return SendCouponScareen(
                        couponCode: "tasty50",
                      );
                    },
                  ));
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  height: 150,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("assets/Ticket Background.png"),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "#tasty50",
                            style: TextStyle(
                              color: reddishColor,
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            "Now get flat 50% Off(upto Rs.100)",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "On order above Rs. 149",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
