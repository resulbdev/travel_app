import 'package:flutter/material.dart';
import 'package:travel_app/view/detail_view.dart';
import 'package:travel_app/widget/homeTextline.dart';
import 'package:travel_app/widget/Search_and_filter.dart';
import 'package:travel_app/widget/home_card.dart';
import 'package:travel_app/widget/location_widget.dart';
import 'package:travel_app/widget/slider_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> images = ["home1", "home2"];
  List<String> location = ["Wayanad", "Wayanad"];
  List<String> title = ["Misty Rock Resort", "Misty Rock Resort"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        body: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 0.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/user_image.jpg"),
                        radius: 30,
                      ),
                    ),
                    Text(
                      "Hello,",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF263238),
                      ),
                    ),
                    Text(
                      " Niara!",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF263238),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                    ),
                    Container(
                      width: 38,
                      height: 38,
                      child: Center(
                          child: Icon(
                        Icons.notification_add_outlined,
                      )),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 6,
                            color: Color(
                              0xFFF9C5B9,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Find Your Stay",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2D2D2D),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                  ),
                  child: SearchAndFilter(),
                ),
                SizedBox(
                  height: 15,
                ),
                SliderWidget(),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
                  child: HomeTextLine(),
                ),
                Container(
                  height: 250,
                  child: ListView.builder(
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return Location(
                        imageName: images[index],
                        location: location[index],
                        title: title[index],
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailPage(
                                        imageName: images[index],
                                        location: location[index],
                                        title: title[index],
                                      )));
                        },
                      );
                    }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: HomeTextLine(text: "Popoular"),
                ),
                Container(
                  height: 120,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return HomeCard(
                        imageName: images[index],
                        location: location[index],
                        title: title[index],
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.bookmark,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "",
              ),
            ],
            selectedItemColor: Color(0xFFF05A22),
            unselectedItemColor: Color(0xFFF9DDCF),
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
