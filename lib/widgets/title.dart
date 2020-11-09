import 'package:flutter/material.dart';

Widget appBar(BuildContext context) {
  return Center(
    child: RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 22),
        children: <TextSpan>[
          TextSpan(
              text: 'IELTS Listening Test',
              style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black)),
        ],
      ),
    ),
  );
}
