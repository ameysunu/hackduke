import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackduke/Survey/ques1.dart';

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
        body: Column(
          children: [
            Card(
              margin: EdgeInsets.all(15),
              elevation: 5.0,
              child: ListTile(
                // leading: Image.asset("assets/images/math.png"),
                title: Text(
                  'Question 1',
                  style: GoogleFonts.abel(
                      textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  )),
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 35, vertical: 10),
              ),
              color: Colors.blue[100],
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(15),
              // ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                'By clicking on "Begin Survey" you consent\n to the usage of your symptom\n information will remain\n anonymous, and none of it\will be made known tp the other users,\n or developers of this app'),
            ListTile(
              title: const Text('Yes, tested positive'),
              leading: Radio(
                value: Options.o1,
                groupValue: _character,
                onChanged: (Options value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            RaisedButton(
                child: Text('Begin Survey'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Question1(),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
