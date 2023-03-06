// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/constraint.dart';
import 'package:project/screens/stopwatch.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/url_launcher_string.dart';

import '../main.dart';

final Uri _url = Uri.parse('https://flutter.dev');

class Detail_screens extends StatelessWidget {
  const Detail_screens({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 80,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            BottomNavItem(
              txt: "Today",
              abc: Icons.calendar_month,
              // press: () {},
            ),
            BottomNavItem(
              txt: "All Exexcise",
              abc: Icons.sports_gymnastics,
              // press: () {},
              isActive: true,
            ),
            BottomNavItem(
              txt: "Settings",
              abc: Icons.settings,
              // press: () {},
            )
          ],
        ),
      ),
      body: Stack(children: <Widget>[
        Container(
          height: size.height * 0.45,
          decoration: BoxDecoration(
            color: kBlueColor,
          ),
        ),
        SingleChildScrollView(
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.05,
                ),
                Text(
                  'Meditation',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "3 min course",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: size.width * 0.6,
                  child: Text(
                    "Live happier and healthier by learning the fundamentals of meditation and mindfulness",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  width: size.width * 0.6,
                  margin: EdgeInsets.symmetric(vertical: 40),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 3),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29.5)),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        hintText: "Search",
                        border: InputBorder.none),
                  ),
                ),
                Text(
                  'What is meditation?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  // width: size.width * 0.6,
                  child: Text(
                    "Meditation isn’t about becoming a different person, a new person, or even a better person. It’s about training in awareness and getting a healthy sense... ",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 15,
                    ),
                  ),
                ),
                InkWell(
                    onTap: () => _launchUrl,
                    child: Text(
                      "press to read more",
                      style: TextStyle(color: Colors.blue),
                    )),
                SizedBox(
                  height: 60,
                ),
                Text(
                  'Start Meditating',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return stopwatchhh();
                          },
                        ),
                      );
                    },
                    child: Text(
                        "                    Start Stop Watch                         "))
              ],
            ),
          )),
        )
      ]),
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
// child: Container(
//             alignment: Alignment.centerRight,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                   image: AssetImage(
//                     "assets/images/meditation.jpg",
//                   ),
                  
//                   fit: BoxFit.fitWidth,
//                   alignment: Alignment.centerRight),
//             ),
//           ),