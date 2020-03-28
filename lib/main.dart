import './provider/Bilan_provider.dart';
import './screen/detailArticle.dart';

import './provider/NavItems.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screen/homePage.dart';
import 'screen/view.dart';
import 'widget/nav_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: ListItem()),
         ChangeNotifierProvider.value(value: Bilan_Provider()),
      ],
          child: MaterialApp(
        title: 'Covid_app',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green
        ),
        home: Nav(),
        routes: {
          'detail':(context)=>DetailsArticle(),
          'view':(context)=>View()
        },
      ),
    );
  }
}

