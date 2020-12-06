import 'package:flutter/material.dart';
import 'package:hackduke/Survey/survey.dart';
import 'package:hackduke/location.dart';
import 'package:hackduke/user.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';
import 'login.dart';

final locationController = TextEditingController();

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#00000'),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: HexColor('#00000'),
        title: IconButton(
          icon: Icon(Icons.info_outline),
          onPressed: () async {
            const url = 'https://www.cdc.gov/coronavirus/2019-ncov/index.html';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              child: CircleAvatar(
                backgroundColor: Colors.black,
                backgroundImage: NetworkImage(imageUrl),
              ),
              onTap: () {
                _showDropdown(context);
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Image.asset('images/home.png')),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Where do you want to go?",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextFormField(
                      controller: locationController,
                      style: TextStyle(color: Colors.white),
                      decoration: new InputDecoration(
                        enabledBorder: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.white)),
                        hintStyle: TextStyle(
                          color: Colors.white54,
                          fontSize: 15,
                        ),
                        labelStyle: TextStyle(color: Colors.white),
                        hintText: 'Enter a location',
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Location()),
                    );
                  },
                )
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Report your symptoms",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RaisedButton(
                color: HexColor('#A658B5'),
                child: Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Survey",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Roboto Medium",
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Survey()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _showDropdown(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: HexColor('#000000'),
          title: FlatButton(
            child: Text(
              "Account Page",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => User()),
              );
            },
          ),
          content: FlatButton(
            child: Text(
              "Sign out",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            onPressed: () {
              signOutGoogle();
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
          ),
        );
      });
}
