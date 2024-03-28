import 'package:flutter/material.dart';

import 'avatar_image.dart';
import 'details_card.dart';

class ShowModalBottomWidget extends StatelessWidget {
  final String? urlImage, namePizza, country, price;

  const ShowModalBottomWidget(
      {super.key,
      required this.urlImage,
      required this.namePizza,
      required this.price,
      required this.country});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      height: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          AvatarImage(
              urlImage: urlImage,
              myHeight: 270,
              myWidth: 300,
              myBorderRadius: 40),
          Text(
            namePizza as String,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          DetailsCard(country: country, price: price),
        ],
      ),
    );
  }
}
