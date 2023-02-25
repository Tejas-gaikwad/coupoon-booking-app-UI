import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:movie_ticket_booking_app/screens/viewCoupons.dart';

import '../screens/homrScreen.dart';
import '../screens/myAccount.dart';
import '../screens/myPerformance.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 29, 28, 28),
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/pngwing 1.png",
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return HomeScreen();
                          },
                        ));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Text(
                          "Home",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return MyAccount();
                          },
                        ));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Text(
                          "My account",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return MyPerformanceScreen();
                          },
                        ));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Text(
                          "My Performance",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewCouponsScreen();
                          },
                        ));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Text(
                          "View Coupons",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Text(
                "Log Out",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
