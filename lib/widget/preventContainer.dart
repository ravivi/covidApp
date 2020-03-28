import 'package:flutter/material.dart';

Widget myCont(
    BuildContext context, String image, String title,String description,) {
  return InkWell(
    onTap: () {
      print("object");
      // Navigator.pushNamed(context, 'detail', arguments: {'image': image});
    },
    child: Container(
      margin: EdgeInsets.symmetric( vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 7,
            child: Container(
              height: 150,
              width: 135,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
              ),
            )
          ),
         
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                      description,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.grey),
                    ),
                
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget myContInv(
    BuildContext context, String image,  String title,String description,) {
  return InkWell(
    onTap: () {
      print("object");
      // Navigator.pushNamed(context, 'detail', arguments: {'image': image});
    },
    child:Container(
      margin: EdgeInsets.symmetric( vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
         Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                      description,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.grey),
                    ),
                
              ],
            ),

          ),
              Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 7,
            child: Container(
              height: 150,
              width: 135,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
              ),
            )
          ),
         
       
        ],
      ),
    ),
  );
}
