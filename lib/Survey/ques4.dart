import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Question4 extends StatefulWidget {
  @override
  _Question4State createState() => _Question4State();
}

enum Options4 {
  o1,
  o2,
}

class _Question4State extends State<Question4> {
  Options4 _character = Options4.o1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Card(
            margin: EdgeInsets.all(15),
            elevation: 5.0,
            child: ListTile(
              title: Text(
                'Question 4',
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
              'In last 14 days, have you come into contact with anyone with the symptoms of COVID-19?'),
          Text(
              'Symptons include: fever or chills, Cough, Shortness of breath r difficulty breathing, Fatigue, \nmuscle or body ache, headcahe, new loss of taste or smell\n, sore throat, cogestions etc.'),
          ListTile(
            title: const Text('Yes'),
            leading: Radio(
              value: Options4.o1,
              groupValue: _character,
              onChanged: (Options4 value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('No'),
            leading: Radio(
              value: Options4.o2,
              groupValue: _character,
              onChanged: (Options4 value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
