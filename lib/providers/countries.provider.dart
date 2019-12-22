import 'dart:convert';

import 'package:countries/data/models/Country.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class CountriesProvider with ChangeNotifier {
  List<Country> _countries = [];

  List<Country> get countries {
    return [..._countries];
  }

  Future<List<Country>> _fetchCountries() async {
    final response = await http.get('https://restcountries.eu/rest/v2/all');
    Iterable countries = json.decode(response.body);
    return countries.map((data) => Country.fromJson(data)).toList();
  }

  Future<void> loadCountries() {
    return _fetchCountries().then(
      (result) {
        _countries = result;
        notifyListeners();
      },
    );
  }
}
