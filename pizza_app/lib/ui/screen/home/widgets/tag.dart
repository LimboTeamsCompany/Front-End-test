import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  final String? tagName;

  const Tag({super.key, required this.tagName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).secondaryHeaderColor,
      ),
      child: Text(
        tagName as String,
        style: const TextStyle(color: Colors.white, fontSize: 15),
      ),
    );
  }
}
