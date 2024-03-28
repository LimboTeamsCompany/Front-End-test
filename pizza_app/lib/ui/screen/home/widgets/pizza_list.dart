import 'package:flutter/material.dart';
import 'package:pizza_app/models/pizza.dart';

import '../../../../services/service.dart';
import 'card.dart';

class PizzaList extends StatelessWidget {
  const PizzaList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Pizza>>(
      future: PizzaServices.loadPizzasData(),
      builder: (BuildContext context, AsyncSnapshot<List<Pizza>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          List<Pizza> pizzas = snapshot.data!;
          return SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.separated(
              padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 15, vertical: 20),
              itemCount: pizzas.length,
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
              itemBuilder: (BuildContext context, int index) {
                Pizza pizza = pizzas[index];
                return SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: MyCard(
                    namePizza: pizza.name,
                    urlImg: pizza.image,
                    country: pizza.countryOrigin,
                    price: pizza.price,
                    tag: pizza.tags,
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }
}
