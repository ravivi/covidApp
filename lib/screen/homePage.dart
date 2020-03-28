import 'package:covid_app/provider/NavItems.dart';
import 'package:covid_app/widget/definitionCard.dart';
import 'package:covid_app/widget/statistic.dart';
import 'package:covid_app/widget/symptom.dart';
import 'package:provider/provider.dart';

import '../widget/prevention.dart';
import 'package:covid_app/widget/prevention.dart';
import 'package:flutter/material.dart';

import '../widget/customButton.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Covid-app",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            definitionCard(
                context,
                "images/corona.jpg",
                "Qu'est ce que le Covid-19",
                "La maladie à coronavirus 2019 (COVID-19) est une maladie infectieuse provoquée par un nouveau virus qui n'avait encore jamais été identifié chez l'être humain.Ce virus provoque une maladie respiratoire (analogue à la grippe)."),
            SizedBox(
              height: 20,
            ),
            definitionCard(context, "images/mask.jpg", "Mode de propagation",
                "Le nouveau coronavirus 2019 se propage essentiellement par contact avec une personne infectée, lorsqu'elle tousse ou éternue, ou par l'intermédiaire des gouttelettes de salive ou de sécrétions nasales"),
            SizedBox(
              height: 20,
            ),
            Consumer<ListItem>(
              builder: (context, catItem, _) => Container(
                alignment: Alignment.center,
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: catItem.mesCat.length,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 3.2,
                          child: MaterialButton(
                            color: catItem.mesCat[i].isToggle
                                ? Colors.green
                                : Colors.grey[300],
                            child: Text(
                              catItem.mesCat[i].nom,
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              catItem.selectedIndex(i);
                              catItem.toggle(catItem.mesCat[i]);
                              setState(() {
                                this.index = i;
                              });
                            },
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: IndexedStack(
                index: index,
                children: <Widget>[Prevention(), Symptoms(), Statistic()],
              ),
            )
          ],
        ),
      ),
    );
  }
}
