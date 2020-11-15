import 'package:flutter/material.dart';
import 'package:ielts_app/database/database.dart';
import 'package:ielts_app/screens/addListeningTestQuestions.dart';
import 'package:ielts_app/widgets/widget.dart';
import 'package:random_string/random_string.dart';

class CreateListeningTest extends StatefulWidget {
  @override
  _CreateListeningTestState createState() => _CreateListeningTestState();
}

class _CreateListeningTestState extends State<CreateListeningTest> {
  DatabaseService databaseService = new DatabaseService();
  final _formKey = GlobalKey<FormState>();
  String testID, testTitle, testDescription;

  bool _isLoading = false;

  createTestFirebase(){
    testID = randomAlphaNumeric(16);
    if(_formKey.currentState.validate()){

      setState((){
        _isLoading = true;
      });

      Map<String,String> testMap = {
        "testID" : testID,
        "testTitle" : testTitle,
        "testDescription" : testDescription
      };

      databaseService.addTest(testMap, testID).then((value){
        setState(() {
          _isLoading = false;
        });
        Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) => AddListeningTestQuestions()
          ));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      body: _isLoading ? Container(
        child: Center(child: CircularProgressIndicator(),
        ),
      ) : Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            TextFormField(
              validator: (value) => value.isEmpty ? "Enter Test Title" : null,
              decoration: InputDecoration(
                hintText: "Test Title",
              ),
              onChanged: (value){
                testTitle = value;
              },
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              validator: (value) => value.isEmpty ? "Enter Test Description" : null,
              decoration: InputDecoration(
                hintText: "Test Description",
              ),
              onChanged: (value){
                testDescription = value;
              },
            ),
            Spacer(),
            GestureDetector(
                onTap: (){
                  createTestFirebase();
                },
                child: blackButton(context, "Create Test")),
            SizedBox(
              height: 60,
            ),
          ],)
        ),
      )
    );
  }
}
