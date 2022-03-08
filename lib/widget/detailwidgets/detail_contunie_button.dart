import 'package:flutter/material.dart';

class DetailContunieButton extends StatelessWidget {
  const DetailContunieButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 180,
      decoration: BoxDecoration(
        color: Color(0xFFF05A22),
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 3),
            color: Color(0xFFF05A22),
            blurRadius: 5,
          )
        ],
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Continue",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              width: 25,
            ),
            Icon(
              Icons.arrow_right_alt_outlined,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
