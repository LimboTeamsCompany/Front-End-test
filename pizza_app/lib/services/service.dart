import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/pizza.dart';

class PizzaServices {
static List<Pizza> _parsePizzasData(String jsonString) {
    final List<dynamic> parsedJson = json.decode(jsonString);
    return parsedJson.map((json) => Pizza.fromJson(json)).toList();
  }

  static Future<List<Pizza>> loadPizzasData() async {
    try {
      String jsonString = await rootBundle.loadString('assets/pizzas_api.json');
      return _parsePizzasData(jsonString);
    } catch (e) {

      throw Exception('Error cargando datos de pizzas: $e');
    }
  }
}
