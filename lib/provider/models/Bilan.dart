import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart' as http;

class Bilan {
  Latest latest;
  List<Locations> locations;

  Bilan({this.latest, this.locations});

  Bilan.fromJson(Map<String, dynamic> json) {
    latest =
        json['latest'] != null ? new Latest.fromJson(json['latest']) : null;
    if (json['locations'] != null) {
      locations = new List<Locations>();
      json['locations'].forEach((v) {
        locations.add(new Locations.fromJson(v));
      });
    }
  }
    Future<String>chargerJson()async{
    return await rootBundle.loadString ("asset/data.json");
  }

 
}

class Latest {
  int confirmed;
  int deaths;
  int recovered;

  Latest({this.confirmed, this.deaths, this.recovered});

  Latest.fromJson(Map<String, dynamic> json) {
    confirmed = json['confirmed'];
    deaths = json['deaths'];
    recovered = json['recovered'];
  }
}

class Locations {
  int id;
  String country;
  String countryCode;
  int countryPopulation;
  String province;
  String lastUpdated;
  Coordinates coordinates;
  Latest latest;

  Locations(
      {this.id,
      this.country,
      this.countryCode,
      this.countryPopulation,
      this.province,
      this.lastUpdated,
      this.coordinates,
      this.latest});

  Locations.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    country = json['country'];
    countryCode = json['country_code'];
    countryPopulation = json['country_population'];
    province = json['province'];
    lastUpdated = json['last_updated'];
    coordinates = json['coordinates'] != null
        ? new Coordinates.fromJson(json['coordinates'])
        : null;
    latest =
        json['latest'] != null ? new Latest.fromJson(json['latest']) : null;
  }

   

}

class Coordinates {
  String latitude;
  String longitude;

  Coordinates({this.latitude, this.longitude});

  Coordinates.fromJson(Map<String, dynamic> json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

}