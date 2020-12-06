import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Question5 extends StatefulWidget {
  @override
  _Question5State createState() => _Question5State();
}

enum Options4 {
  o1,
  o2,
}

class _Question5State extends State<Question5> {
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
              'In the last 14 days, have you come into contact with someoe who tested positive\n for COVID-19(i.e. been within 6 feet of an\n infected perso for at at least 15 mins)?'),
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
