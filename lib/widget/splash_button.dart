import 'package:flutter/material.dart';

class SplashButton extends StatelessWidget {
  const SplashButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      decoration: BoxDecoration(
        color: Color(0xFFF05A22),
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 5),
            color: Color(0xFFF05A22),
            blurRadius: 10,
          )
        ],
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Get Started",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
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
