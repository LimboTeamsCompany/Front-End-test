import 'package:flutter/material.dart';

import 'info_card.dart';

class DetailsCard extends StatelessWidget {
  final String? country, price;
  
  const DetailsCard(
      {super.key,
      required this.country,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (country != null) InfoCard(myKey: "Pais:", value: country),
        if (price != null) InfoCard(myKey: "Precio", value: price),
      ],
    );
  }
}
