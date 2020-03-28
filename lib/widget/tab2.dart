import 'package:covid_app/screen/video.dart';
import 'package:covid_app/screen/video_list.dart';

import '../screen/fakeNews.dart';
import '../screen/news.dart';
import 'package:flutter/material.dart';



class TabPage2 extends StatefulWidget {
  @override
  _TabPage2State createState() => new _TabPage2State();
}

class _TabPage2State extends State<TabPage2> with TickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    TabController tabController;
    tabController = new TabController(length: 2, vsync: this);

    var tabBarItem = new TabBar(
      tabs: [
        new Tab(
         child: Column(
           children: <Widget>[
             Text(
               'News',
               style: TextStyle(
                 color:Colors.white,
                 fontWeight: FontWeight.bold
               ),
             )
           ],
         ),
        ),
        new Tab(
          child: Column(
           children: <Widget>[
             Text(
               'Vidéo',
               style: TextStyle(
                 color:Colors.white,
                 fontWeight: FontWeight.bold,
               ),
             )
           ],
         ),
        ),
      ],
      controller: tabController,
      indicatorColor: Colors.white,
    );



    return new DefaultTabController(
      length: 2,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("Covid News"),
          bottom: tabBarItem,
          backgroundColor: Color(0xff14922F)
        ),
    
        body: new TabBarView(
          controller: tabController,
          children: [
            Video(),
            VideoList()
          ],
        ),
        
      ),
      
    );
    
  }
}

