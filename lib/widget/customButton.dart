import 'package:flutter/material.dart';

Widget customButton(String text, Color color,BuildContext context) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Container(
      height: 50,
      width: MediaQuery.of(context).size.width / 3.2,
      child: MaterialButton(
          color: color,
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {}),
    ),
  );
}
