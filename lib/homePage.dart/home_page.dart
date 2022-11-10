import 'package:beauty_app/homePage.dart/boxesCategories.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

//Color.fromRGBO(253, 247, 242, 1) light
//Color.fromRGBO(132, 109, 98, 1) dark
//Color.fromRGBO(168, 162, 156,1) intermediate

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> images = [
    Image(image: AssetImage('assets/beauty_home1.png')),
    Image(image: AssetImage('assets/beauty_home2.png'))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(253, 247, 242, 1),
        title: Image(
          image: AssetImage('assets/appbar_image.png'),
          height: 60,
        ),
      ),

      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: CarouselSlider(
                      items: images,
                      options: CarouselOptions(
                        height: 180,
                        viewportFraction: 1.2,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: false,
                        scrollDirection: Axis.vertical,
                      )),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      color: Color.fromRGBO(132, 109, 98, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              indent: 8,
              endIndent: 300,
              thickness: 1,
              color: Color.fromRGBO(132, 109, 98, 1),
              height: 10,
            ),
            const SizedBox(
              height: 20,
            ),
            // ScrollCategories(),
            Flexible(child: SingleChildScrollView(child: BoxCategories())),
          ],
        ),
      ),
      // bottomNavigationBar: Container(
      //   decoration: BoxDecoration(color: Color.fromRGBO(253, 247, 242, 1)),
      //   child: SafeArea(
      //     child: GNav(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       // padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      //       color: Color.fromRGBO(168, 162, 156, 1),
      //       iconSize: 20,
      //       gap: 8,
      //       textStyle:
      //           TextStyle(fontSize: 18, color: Color.fromRGBO(132, 109, 98, 1)),
      //       activeColor: Color.fromRGBO(132, 109, 98, 1),
      //       tabBackgroundColor: Color.fromRGBO(132, 109, 98, 0.3),
      //       tabs: [
      //         GButton(
      //           icon: Icons.home_filled,
      //           text: 'Home',
      //         ),
      //         GButton(
      //           icon: Icons.abc_rounded,
      //           text: 'Category',
      //         ),
      //         GButton(
      //           icon: Icons.favorite,
      //           text: 'Favourites',
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
