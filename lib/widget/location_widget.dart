import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  final String imageName;
  final String location;
  final String title;
  final Function() onTap;
  const Location({
    required this.onTap,
    required this.imageName,
    required this.location,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 250,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(26),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 7.0, horizontal: 40),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/$imageName.jpg",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.room,
                            color: Color(0xFFF05A22),
                          ),
                          Text(
                            location,
                            style: TextStyle(
                              color: Color(0xFF898989),
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            width: 140,
                          ),
                          GestureDetector(
                            onTap: onTap,
                            child: Container(
                              child: Center(
                                  child: Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.white,
                              )),
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                  color: Color(0xFFF05A22),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
