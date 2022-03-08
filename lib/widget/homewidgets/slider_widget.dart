import 'package:flutter/material.dart';
import 'package:travel_app/widget/homewidgets/slider.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SliderImage(countryName: "India", imageName: "india.jpg"),
          SizedBox(width: 30),
          SliderImage(countryName: "Newyork", imageName: "newyork.jpg"),
          SizedBox(width: 30),
          SliderImage(countryName: "Australia", imageName: "australia.jpg"),
          SizedBox(width: 30),
          SliderImage(countryName: "Poland", imageName: "poland.jpg"),
        ],
      ),
    );
  }
}
