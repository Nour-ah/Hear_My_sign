import 'package:flutter/material.dart';

class LearnCardE extends StatelessWidget {
  final String image;
  final String label;
  final double left;
  final Color color;
  final Function? ontap;
  LearnCardE(
      {required this.image,
      required this.label,
      this.left = 28.0,
      this.color = Colors.black,
      required this.ontap});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.5,
      height: MediaQuery.of(context).size.height / 6.4,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        color: Colors.white,
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(23.0)),
      ),
      child: GestureDetector(
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              child: Image.asset(
                image,
                width: MediaQuery.of(context).size.width / 0.1,
                height: MediaQuery.of(context).size.height / 9.4,
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              bottom: 0.1,
              left: left,
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 33.0,
                  fontWeight: FontWeight.bold,
                  //fontFamily: 'Lobster',
                  color: color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
