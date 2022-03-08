import 'package:flutter/material.dart';

class SearchAndFilter extends StatelessWidget {
  const SearchAndFilter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          height: 40,
          width: 250,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search here...",
                border: InputBorder.none,
                suffixIcon: Icon(
                  Icons.search,
                  color: Color(0xFF263238),
                ),
              ),
            ),
          ),
        ),
        Container(
          child: Center(
            child: Icon(
              Icons.tune,
              color: Colors.white,
            ),
          ),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            color: Color(0xFFF05A22),
            boxShadow: [
              BoxShadow(
                offset: Offset(-4, 5),
                blurRadius: 13,
                color: Color(
                  0xFFF05A22,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
