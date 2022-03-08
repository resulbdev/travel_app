import 'package:flutter/material.dart';

class HomeTextLine extends StatelessWidget {
  final String? text;
  const HomeTextLine({
    this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 9.0),
      child: Row(
        children: [
          Text(
            text ?? "Our Properties",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2D2D2D),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Text(
              "View All",
              style: TextStyle(
                color: Color(0xFFF05A22),
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
