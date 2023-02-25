import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constants/backConstatnt.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
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
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              "My Account",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            SizedBox(height: 20),
            SingCard(
              headline: "Name",
              hintText: "Daniel Flores",
            ),
            SizedBox(height: 20),
            SingCard(
              headline: "Email Address",
              hintText: "daniel1123@gmail.com",
            ),
            SizedBox(height: 20),
            SingCard(
              headline: "Phone number",
              hintText: "+56220009093",
            ),
            SizedBox(height: 20),
            SingCard(
              headline: "Account Registered by",
              hintText: "Lucas Alfaro",
            ),
            SizedBox(height: 20),
            SingCard(
              headline: "Registration Date",
              hintText: "20-08-2022",
            ),
          ],
        ),
      )),
    );
  }
}

class SingCard extends StatelessWidget {
  final headline;
  final hintText;
  const SingCard({super.key, required this.headline, required this.hintText});

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
          SizedBox(height: 05),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black))),
            child: TextField(
              decoration:
                  InputDecoration(border: InputBorder.none, hintText: hintText),
            ),
          ),
        ],
      ),
    );
  }
}
