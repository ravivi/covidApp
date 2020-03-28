import 'package:covid_app/provider/models/videoModel.dart';
import 'package:flutter/material.dart';

class Video extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoModel.length,
      itemBuilder: (context,i){
        return bigCont(context,videoModel[i].titre, videoModel[i].image,videoModel[i].id);
      },
    );
  }
  
  Widget bigCont(BuildContext context, String titre,String image,String id) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            elevation: 5,
            child: Column(
        children: <Widget>[
            GestureDetector(
              onTap: () {
               
              },
              child: Container(
                
                width: MediaQuery.of(context).size.width,
                height: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)
                    ),
                    image: DecorationImage(
                        image: AssetImage(image),
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.2), BlendMode.darken),
                        fit: BoxFit.cover)),
                child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white.withOpacity(0.6)),
                      child: IconButton(icon: Icon(Icons.play_arrow, size: 40,), onPressed: (){
                        Navigator.pushNamed(context, 'view',arguments: id);
                      })
                    ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              
              width: MediaQuery.of(context).size.width,
              child: Text(titre ,style: TextStyle(fontSize: 17),),
            ),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                IconButton(icon:Icon(Icons.visibility, color: Colors.blueGrey,), onPressed: (){},),
                Text("333"),
                SizedBox(width: 7,),
                IconButton(icon:Icon(Icons.mood, color: Colors.blueGrey,), onPressed: (){},),
                Text("333"),
                SizedBox(width: 7,),
                IconButton(icon:Icon(Icons.share, color: Colors.blueGrey,), onPressed: (){},),
                Text("333"),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              
              width: MediaQuery.of(context).size.width,
              child: Text("Ajouté à 19h" ,style: TextStyle(fontSize: 15, color: Colors.grey),),
            ),
            SizedBox(height: 10,),
        ],
      ),
          ),
    );
  }
}