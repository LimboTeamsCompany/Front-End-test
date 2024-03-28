import 'package:flutter/material.dart';
import 'package:pizza_app/models/pizza.dart';

import '../services/service.dart';

class AppStateProvider extends ChangeNotifier {
  List<Pizza> myPizzas = [];

  Future<List<Pizza>> loadPizzas() async {
    try {
      myPizzas = await PizzaServices.loadPizzasData();
      notifyListeners();
      return myPizzas;
    } catch (e) {
      throw Exception('Error cargando datos de pizzas: $e');
    }
  }

}
