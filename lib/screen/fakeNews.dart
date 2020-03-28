import '../provider/models/newModel.dart';
import 'package:flutter/material.dart';

import 'detailArticle.dart';

class FakeNewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child:ListView.builder(
                itemCount: newsdetails.length,
                itemBuilder: (context, i){
                  return Container(
                    margin: EdgeInsets.only(top:7),
                    padding:EdgeInsets.all(10),
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    child:Column(
                      children: <Widget>[ 
                        InkWell(
                       onTap: (){
                                   Navigator.pushNamed(context,'detail',arguments: newsdetails[i]);
                                  },
              child: Container(
                height:120,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image:DecorationImage(
              image:AssetImage(newsdetails[i].image),
              fit:BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black54.withOpacity(.3), BlendMode.darken)
                  )
                ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding:EdgeInsets.only(left:15, top:15),
                              alignment: Alignment.topLeft,
                              child: Text(
                                newsdetails[i].titre,
                                style: TextStyle(
                                  color:Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 23
                                ),
                              ),
                            ),
                          ],
                        ),
                ),
                        ),

                        SizedBox(height: 20),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child:Text(newsdetails[i].description)
                        ),
                        SizedBox(height: 10),

                         Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                              
                               IconButton(icon:Icon(Icons.comment, color: Colors.grey[300],), onPressed: (){},),

                               IconButton(icon:Icon(Icons.share, color: Colors.grey[300],), onPressed: (){},),
                                InkWell(
                                  onTap: (){
                                   Navigator.pushNamed(context,'detail',arguments: newsdetails[i]);
                                  },
                                  child: Text(
                                   'Lire plus',
                                   style: TextStyle(
                                     fontWeight: FontWeight.w500,
                                     fontSize: 15,
                                     color: Color(0xff14922F)
                                   ),
                               ),
                                ),
                              ],
                            ),
                      ],
                    )
                  );
                },
              )
            ),
          ),
    );
  }
}