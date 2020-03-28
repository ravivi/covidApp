import 'package:flutter/material.dart';

import 'preventContainer.dart';

class Prevention extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:    Column(
                    children: <Widget>[
                      myCont(
                          context,
                          "images/eternuer.jpg",
                          "Eternuez avec précaution",
                          "vous vous couvrez le nez et la bouche avec un mouchoir ou le creux du coude quand vous toussez ou éternuez",),
                      myContInv(
                          context,
                          "images/lavage.jpg",
                          "Lavez vous les mains",
                          "vous vous nettoyez fréquemment les mains à l'eau et au savon"
                      ),
                     myCont(
                          context,
                          "images/salut.jpg",
                          "Evitez les contacts proches",
                          "vous évitez les contacts étroits (à moins de 1 mètre ou 3 pieds) avec toute personne ayant des symptômes de rhume banal ou d'état grippal"
                     ),
                      myContInv(
                          context,
                          "images/gel.jpg",
                          "Utilisez Le gel hydroalcoolique",
                          "vous vous nettoyez fréquemment les mains avec un produit hydroalcoolique"
                      ),
                     myCont(
                          context,
                          "images/nettoyer.png",
                          "Nettoyez regulièrement",
                          " En plus de nettoyer les surfaces touchées régulièrement, pensez aux différentes zones à risque, comme les poignées de porte ..."),
                     
                    
                    
                    ],
                  ),
               
    );
  }
}