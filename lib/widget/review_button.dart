import 'package:flutter/material.dart';

class ReviewButton extends StatelessWidget {
  const ReviewButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Review",
          style: TextStyle(
              color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
        ),
      ),
      width: 75,
      height: 30,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.all(Radius.circular(7)),
        border: Border.all(color: Color(0xFFE0E0E0), width: 0.5),
      ),
    );
  }
}
