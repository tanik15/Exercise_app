import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/screens/detail_screens.dart';

import 'constraint.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size =
        MediaQuery.of(context).size; //this will gonna give us size of device
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
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(color: Color(0xFFF5CEB8)),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      "Good morning \nTanik",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                    ),
                  ),
                  Container(
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
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 0.85,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        containerCard(
                          title: "Diet Recommendation",
                          src: "assets/images/img1.jpg",
                          press: () {
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     builder: (context) {
                            //       return Detail_screens();
                            //     },
                            //   ),
                            // );
                          },
                        ),
                        containerCard(
                          title: "Kegal Exercise",
                          src: "assets/images/img.jpg",
                          press: () {},
                        ),
                        containerCard(
                          title: "Meditation",
                          src: "assets/images/img3.jpg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Detail_screens();
                              }),
                            );
                          },
                        ),
                        containerCard(
                          title: "Yoga",
                          src: "assets/images/img4.jpg",
                          press: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String txt;
  final bool isActive;
  // final Function press;
  final IconData abc;
  const BottomNavItem({
    Key? key,
    required this.txt,
    this.isActive = false,
    // required this.press,
    required this.abc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(
            abc,
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            txt,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          )
        ],
      ),
    );
  }
}
