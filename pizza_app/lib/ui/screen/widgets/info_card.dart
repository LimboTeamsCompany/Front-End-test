import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String? myKey, value;

  const InfoCard({super.key, required this.myKey, required this.value});

  @override
  Widget build(BuildContext context) {
    String displayValue = value ?? '';
    if (displayValue.length > 10) {
      displayValue = '${displayValue.substring(0, 10)}...';
    }

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: myKey,
            style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 16),
          ),
          const TextSpan(
            text: " ",
          ),
          TextSpan(
            text: displayValue,
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ],
      ),
    );
  }
}
