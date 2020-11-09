import 'package:flutter/material.dart';
import 'package:ielts_app/widgets/title.dart';

class TestTakerMenu extends StatefulWidget {
  @override
  _TestTakerMenuState createState() => _TestTakerMenuState();
}

class _TestTakerMenuState extends State<TestTakerMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.transparent,
          elevation: 0.0,
      ),
      body: Container(
        child: Column(children: [

        ],)
      ),
    );
  }
}
