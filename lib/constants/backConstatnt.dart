import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BackConstatnt extends StatelessWidget {
  const BackConstatnt({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 14),
          width: 30,
          height: 30,
          // alignment: Alignment.centerRight,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black, width: 1),
          ),
          child: Icon(
            Icons.arrow_back_ios,
            fill: 1.0,
            color: Colors.black,
            size: 14,
          )),
    );
  }
}
