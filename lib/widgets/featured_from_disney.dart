import 'package:flutter/material.dart';

import 'package:moviez/theme.dart';

// ignore: must_be_immutable
class FeaturedFromDisney extends StatelessWidget {
  String title;
  String imageUrl;
  String genre;

  FeaturedFromDisney(this.genre, this.imageUrl, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 24, top: 30),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imageUrl,
              width: 100,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: titleTextStyle.copyWith(fontSize: 20, fontWeight: bold),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                genre,
                style: subtitleTextStyle.copyWith(fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/rating.png',
                width: 98,
              )
            ],
          )
        ],
      ),
    );
  }
}
