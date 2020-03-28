import 'package:flutter/material.dart';

Widget definitionCard(BuildContext context , String image, String title, String definition){
  return           Card(
              elevation: 5,
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          title,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width / 1.6,
                            child: Text(
                              definition,
                              style: TextStyle(color: Colors.grey),
                            )),
                      ],
                    ),
                    CircleAvatar(
                      maxRadius: 50,
                      backgroundImage: AssetImage(image),
                    ),
                  ],
                ),
              ),
            );
}