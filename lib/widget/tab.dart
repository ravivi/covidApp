import '../screen/fakeNews.dart';
import '../screen/news.dart';
import 'package:flutter/material.dart';



class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => new _TabPageState();
}

class _TabPageState extends State<TabPage> with TickerProviderStateMixin {


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
               'FakeNews',
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
            NewsPage(),
            FakeNewsPage()
          ],
        ),
        
      ),
      
    );
    
  }
}

