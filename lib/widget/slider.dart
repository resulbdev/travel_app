import 'package:flutter/material.dart';

class SliderImage extends StatelessWidget {
  final String countryName;
  final String imageName;
  const SliderImage({
    required this.imageName,
    required this.countryName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/$imageName"),
          radius: 30,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          countryName,
          style: TextStyle(
            color: Color(0xFF595959),
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
