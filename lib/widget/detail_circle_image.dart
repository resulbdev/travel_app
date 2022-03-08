import 'package:flutter/material.dart';

class DetailCircleImage extends StatelessWidget {
  final String imageName;
  const DetailCircleImage({
    required this.imageName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/$imageName"),
            radius: 30,
          ),
        ],
      ),
    );
  }
}
