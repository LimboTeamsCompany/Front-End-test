import 'package:flutter/material.dart';

class AvatarImage extends StatelessWidget {
  final String? urlImage;
  final double myHeight, myWidth, myBorderRadius;

  const AvatarImage(
      {super.key,
      required this.urlImage,
      required this.myHeight,
      required this.myWidth,
      required this.myBorderRadius});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: myHeight,
      width: myWidth,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(myBorderRadius),
          image: DecorationImage(
              image: NetworkImage(urlImage ??
                  "https://static.vecteezy.com/system/resources/thumbnails/022/014/063/small_2x/missing-picture-page-for-website-design-or-mobile-app-design-no-image-available-icon-vector.jpg"),
              fit: BoxFit.cover)),
    );
  }
}
