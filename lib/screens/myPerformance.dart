import 'package:flutter/material.dart';
import 'package:movie_ticket_booking_app/constants/backConstatnt.dart';

class MyPerformanceScreen extends StatefulWidget {
  const MyPerformanceScreen({super.key});

  @override
  State<MyPerformanceScreen> createState() => _MyPerformanceScreenState();
}

class _MyPerformanceScreenState extends State<MyPerformanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: BackConstatnt(),
      ),
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(height: 20),
            Text(
              "My Performance",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            SizedBox(height: 50),
            PerFormaceCard(
              firstHeadline: "Total no. of sent coupons",
              secondHeadline: "167",
            ),
            SizedBox(height: 30),
            PerFormaceCard(
              firstHeadline: "Total no. of redeemed coupons",
              secondHeadline: "78",
            ),
          ],
        ),
      )),
    );
  }
}

class PerFormaceCard extends StatelessWidget {
  final firstHeadline;
  final secondHeadline;
  const PerFormaceCard({
    super.key,
    required this.firstHeadline,
    required this.secondHeadline,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 10.0,
            spreadRadius: 0.2,
            color: Colors.black.withOpacity(0.3),
            offset: Offset(0.0, 0.0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            firstHeadline.toString(),
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          SizedBox(height: 20),
          Text(
            secondHeadline.toString(),
            style: TextStyle(
              color: Colors.black,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
