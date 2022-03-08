import 'package:flutter/material.dart';
import 'package:travel_app/widget/detail_button.dart';
import 'package:travel_app/widget/detail_circle_image.dart';
import 'package:travel_app/widget/detail_image.dart';
import 'package:travel_app/widget/detail_page_app_bar.dart';
import 'package:travel_app/widget/review_button.dart';

class DetailPage extends StatefulWidget {
  String imageName;
  String title;
  String location;

  DetailPage({
    required this.imageName,
    required this.location,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final List<String> imageName = [
    "detail1.jpg",
    "detail2.jpg",
    "detail3.jpg",
    "detail2.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        body: Column(
          children: [
            DetailPageAppBar(),
            detailImage(
              imageName: widget.imageName,
              location: widget.location,
              title: widget.title,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageName
                  .map((String text) => DetailCircleImage(imageName: text))
                  .toList(),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 25),
                DetailButton(),
                ReviewButton(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: RichText(
                text: TextSpan(
                  text:
                      "Ea non tempor et laborum proident laborum aliquip tempor \naliquip excepteur aliqua culpa in eu. Dolore commodo eu velit \ncommodo id id. Labore proident velit occaecat reprehenderit \nullamco aliqua reprehenderit exercitation. nostrud mollit amet. \nPariatur deserunt amet exercitation duis",
                  style: TextStyle(
                      color: Color(0xFF8B8B8B), fontSize: 12, height: 1.4),
                  children: [
                    TextSpan(
                      text: " Read More",
                      style: TextStyle(
                        color: Color(0xFFF05A22),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(width: 25),
                RichText(
                  text: TextSpan(
                    text: "\$410",
                    style: TextStyle(
                        color: Color(0xFF2D2D2D),
                        fontSize: 30,
                        height: 1.4,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: "/Person",
                        style: TextStyle(
                            color: Color(0xFF2D2D2D),
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Container(
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
