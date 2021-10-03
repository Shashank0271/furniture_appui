import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 7,
        shadowColor: Colors.white60,
        borderRadius: BorderRadius.circular(30),
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search',
              prefixIcon: Icon(
                Icons.search_outlined,
                color: Colors.amber.shade900,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
