import 'package:flutter/material.dart';
import 'package:ielts_app/screens/adminMenu.dart';
import 'package:ielts_app/screens/testTakerMenu.dart';
import 'package:ielts_app/widgets/title.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  adminMenu(){
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => AdminMenu()
    ));
  }

  testTakerMenu(){
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => TestTakerMenu()
    ));
  }



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
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Spacer(),
                  //Button
                  GestureDetector(
                    onTap: (){
                      adminMenu();
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width - 48,
                      child: Text(
                        "Admin",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  //Button
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width - 48,
                    child: Text(
                      "Test Taker",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 275,
                  ),
                ],
              )),
        ));
  }
}
