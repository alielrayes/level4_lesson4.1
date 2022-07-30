// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_app/screens/add_post.dart';
import 'package:instagram_app/screens/home.dart';
import 'package:instagram_app/screens/profile.dart';
import 'package:instagram_app/screens/search.dart';
import 'package:instagram_app/shared/colors.dart';

class WebScerren extends StatefulWidget {
  const WebScerren({Key? key}) : super(key: key);

  @override
  State<WebScerren> createState() => _WebScerrenState();
}

class _WebScerrenState extends State<WebScerren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: primaryColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: secondaryColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.add_a_photo,
              color: secondaryColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: secondaryColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              color: secondaryColor,
            ),
            onPressed: () {},
          ),
        ],
        backgroundColor: mobileBackgroundColor,
        title: SvgPicture.asset(
          "assets/img/instagram.svg",
          color: primaryColor,
          height: 32,
        ),
      ),
      body: PageView(
        onPageChanged: (index) {
         
        },
        physics: NeverScrollableScrollPhysics(),
        // controller: _pageController,
        children: [
          Home(),
          Search(),
          AddPost(),
          Center(child: Text("Love u ♥")),
          Profile(),
        ],
      ),
    );
  }
}
