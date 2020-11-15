import 'package:flutter/material.dart';
import 'package:ielts_app/screens/adminMenu.dart';
import 'package:ielts_app/screens/testTakerMenu.dart';
import 'package:ielts_app/widgets/widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: appBar(context),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Form(
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Spacer(),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => AdminMenu()
                        ));
                      },
                      child: blackButton(context, "Admin"),
                    ),
                  SizedBox(
                    height: 50,
                  ),
                    //Button
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => TestTakerMenu()
                      ));
                    },
                    child: blackButton(context, "Test Taker")
                  ),
                  SizedBox(
                    height: 275,
                  ),
                ],
              )),
        ));
  }
}
