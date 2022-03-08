import 'package:flutter/material.dart';

class DetailPageAppBar extends StatelessWidget {
  const DetailPageAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 38,
              height: 38,
              child: Center(
                  child: Icon(
                Icons.arrow_back,
              )),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 6,
                    color: Color(
                      0xFF8E8481,
                    ),
                  )
                ],
              ),
            ),
          ),
          Text(
            "Details",
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFF292931),
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: 38,
            height: 38,
            child: Center(
              child: Icon(
                Icons.more_horiz,
              ),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 6,
                  color: Color(
                    0xFF8E8481,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
