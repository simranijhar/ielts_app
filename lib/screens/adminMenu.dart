import 'package:flutter/material.dart';
import 'package:ielts_app/screens/createListeningTest.dart';
import 'package:ielts_app/widgets/widget.dart';

class AdminMenu extends StatefulWidget {
  @override
  _AdminMenuState createState() => _AdminMenuState();
}

class _AdminMenuState extends State<AdminMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black87),
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
                        builder: (context) => CreateListeningTest()
                      ));
                    },
                    child: blackButton(context, "Create Listening Test")
                  ),
                  SizedBox(
                    height: 350,
                  ),
                ],
              )),
      ));
  }
}
