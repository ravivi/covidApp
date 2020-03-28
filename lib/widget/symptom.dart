import 'package:covid_app/widget/symptomContainer.dart';
import 'package:flutter/material.dart';

class Symptoms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 30,
        ),
        symptom(context, "images/ecoulement.jpg", "Ecoulement nasal (nez qui coule)"),
        SizedBox(
          height: 30,
        ),
        symptoms(context, "images/toux.jpg", "Toux", "images/malgorge.jpg", "Mal de gorge"),
        SizedBox(
          height: 30,
        ),
        symptom(context, "images/respiratoire.jpg", "Difficultés respiratoires (cas sévères)"),
      SizedBox(
          height: 30,
        ),
       symptoms(context, "images/fievre.png", "Fièvre","images/digestif.jpg", "Troubles digestifs",),
      ],
    );
  }
}
