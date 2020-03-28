import '../provider/models/newModel.dart';
import 'package:flutter/material.dart';

class DetailsArticle extends StatefulWidget {
  static const routeName = '/orders';
  @override
  _DetailsArticleState createState() => _DetailsArticleState();
}

class _DetailsArticleState extends State<DetailsArticle> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments as NewsModels;

    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.green,
                expandedHeight: 300.0,
                elevation: 0,
                floating: false,
                pinned: true,
                title: Text(
                  args.titre,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    fontFamily: 'BAARS',
                  ),
                ),
                flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(args.image,
                        fit: BoxFit.cover, height: 200)),
              ),
            ];
          },
          body: SingleChildScrollView(
              child: Container(
                  child: Column(
            children: <Widget>[
              SizedBox(height: 5),
              Container(
                margin: EdgeInsets.only(left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width/1.5,
                      child: Text(
                        args.titre,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          fontFamily: 'BAARS',
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.favorite_border,
                          color: Colors.red, size: 27),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.share, color: Colors.grey, size: 27),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.only(left: 8, right: 8),
                // height: MediaQuery.of(context).size.height/2,
                child: Text(
                  "Le lorem ipsum est, en imprimerie, une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin, le Lorem ipsum ou Lipsum Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin, le Lorem ipsum ou Lipsum Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en .",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 15,
                    fontFamily: 'BAARS',
                  ),
                ),
              ),
            ],
          ))),
        ),
      ),
    );
  }
}
