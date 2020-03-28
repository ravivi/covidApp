import 'package:flutter/material.dart';

Widget symptom(BuildContext context, String image, String title) {
  return Container(
    alignment: Alignment.centerRight,
    height: 200,
    margin: EdgeInsets.symmetric(horizontal: 10),
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.darken),
            image: AssetImage(image),
            fit: BoxFit.cover),
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20)),
    child: Container(
      padding: EdgeInsets.only(right: 2),
      width: MediaQuery.of(context).size.width / 2.3,
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.w700),
      ),
    ),
  );
}

Widget symptoms(BuildContext context, String image1, String title1,
    String image2, String title2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Container(
        alignment: Alignment.bottomCenter,
        height: 200,
        padding: EdgeInsets.only(bottom: 10),
        width: MediaQuery.of(context).size.width / 2.2,
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3), BlendMode.darken),
                image: AssetImage(image1),
                fit: BoxFit.cover),
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          title1,
          style: TextStyle(
              fontSize: 22, color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      Container(
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.only(bottom: 10),
        height: 200,
        width: MediaQuery.of(context).size.width / 2.2,
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3), BlendMode.darken),
                image: AssetImage(image2),
                fit: BoxFit.cover),
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          title2,
          style: TextStyle(
              fontSize: 22, color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
    ],
  );
}
