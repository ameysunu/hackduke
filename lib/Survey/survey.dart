import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackduke/Survey/ques1.dart';
import 'package:hexcolor/hexcolor.dart';

class Survey extends StatefulWidget {
  @override
  _SurveyState createState() => _SurveyState();
}

enum Options { o1, o2, o3, o4, o5 }

class _SurveyState extends State<Survey> {
  Options _character = Options.o1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Card(
                margin: EdgeInsets.all(15),
                elevation: 5.0,
                child: ListTile(
                  // leading: Image.asset("assets/images/math.png"),
                  title: Text(
                    'Survey',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                ),
                color: HexColor('#9586D8')
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(15),
                // ),
                ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'By clicking on "Begin Survey" you consent to the usage of your symptom information will remain anonymous, and none of it will be made known tp the other users, or developers of this app.',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: Image.asset('images/survey.png'),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RaisedButton(
                    color: HexColor('#FF8CAE'),
                    child: Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Begin Survey",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Question1()),
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
