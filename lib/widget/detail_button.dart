import 'package:flutter/material.dart';

class DetailButton extends StatelessWidget {
  const DetailButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Detail",
          style: TextStyle(color: Colors.white, fontSize: 13),
        ),
      ),
      margin: EdgeInsets.only(right: 10),
      width: 75,
      height: 30,
      decoration: BoxDecoration(
        color: Color(0xFFF05A22),
        borderRadius: BorderRadius.all(Radius.circular(7)),
        boxShadow: [
          BoxShadow(
            offset: Offset(4, 3),
            blurRadius: 9,
            color: Color(
              0xFFF9C5B9,
            ),
          )
        ],
      ),
    );
  }
}
