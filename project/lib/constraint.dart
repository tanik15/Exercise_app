import 'package:flutter/material.dart';

import 'constants.dart';

class containerCard extends StatelessWidget {
  final String title;
  final String src;
  final VoidCallback press;
  const containerCard({
    Key? key,
    required this.title,
    required this.src,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap:
              press,
           
            child: Column(children: [
              Spacer(),
              Image.asset(src),
              Spacer(),
              Text(
                title,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              )
            ]),
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 17),
                  blurRadius: 17,
                  spreadRadius: -23,
                  color: kShadowColor)
            ]),
      ),
    );
  }
}
