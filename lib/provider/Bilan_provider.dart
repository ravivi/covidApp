import 'dart:convert';

import 'package:covid_app/provider/models/Bilan.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Bilan_Provider with ChangeNotifier {
  Future fetchAllBilan() async {
    const url = 'https://coronavirus-tracker-api.herokuapp.com/v2/locations';

    final response = await http.get(url);

    final extratedData = json.decode(response.body) as Map<String, dynamic>;
    return extratedData;
  }
}
