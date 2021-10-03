import 'package:flutter/material.dart';
export 'main.dart';

class MyRowImage extends StatelessWidget {
  final String imageString;
  final String label;
  MyRowImage(this.imageString, this.label);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 4,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(imageString),
              ),
            ),
          ),
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'QuicksandLight',
            ),
          ),
        ],
      ),
    );
  }
}
