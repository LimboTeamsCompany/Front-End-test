import 'package:flutter/material.dart';
import 'package:pizza_app/ui/screen/home/widgets/tag.dart';
import 'package:pizza_app/ui/screen/widgets/avatar_image.dart';
import 'package:pizza_app/ui/screen/widgets/details_card.dart';
import 'package:pizza_app/ui/screen/widgets/show_modal_bottom_widget.dart';


class MyCard extends StatefulWidget {
  final String? namePizza, urlImg;
  final String? price, country, tag;

  const MyCard({
    Key? key,
    required this.namePizza,
    required this.urlImg,
    required this.country,
    required this.price,
    required this.tag,
  }) : super(key: key);

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(40.0)),
          ),
          context: context,
          builder: (BuildContext context) {
            return ShowModalBottomWidget(
                urlImage: widget.urlImg,
                namePizza: widget.namePizza,
                price: widget.price,
                country: widget.country);
          },
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.14,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            AvatarImage(
                urlImage: widget.urlImg,
                myHeight: 100,
                myWidth: 100,
                myBorderRadius: 50),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.namePizza ?? "",
                    style: Theme.of(context).textTheme.displayLarge!,
                  ),
                  DetailsCard(country: widget.country, price: widget.price),
                  if (widget.tag != null) Tag(tagName: widget.tag)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
