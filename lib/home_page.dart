import 'package:flutter/material.dart';

import 'package:moviez/search_page.dart';
import 'package:moviez/theme.dart';
import 'package:moviez/widgets/featured_from_disney.dart';
import 'package:moviez/widgets/list_film.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.only(top: 30, left: 24, right: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Moviez',
                  style:
                      titleTextStyle.copyWith(fontSize: 28, fontWeight: bold),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Watch much easier',
                  style: subtitleTextStyle.copyWith(
                      fontSize: 16, fontWeight: regular),
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchPage(),
                  ),
                );
              },
              child: Image.asset(
                'assets/search_button.png',
                width: 22,
              ),
            ),
          ],
        ),
      );
    }

    Widget featured() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ListFilm(),
            ListFilm(),
            ListFilm(),
          ],
        ),
      );
    }

    Widget titleFrom() {
      return Container(
        padding: EdgeInsets.only(top: 30, left: 24),
        child: Text(
          'From Disney',
          style: titleTextStyle.copyWith(fontWeight: bold, fontSize: 28),
        ),
      );
    }

    Widget featuredFrom() {
      return SingleChildScrollView(
        child: Column(
          children: [
            FeaturedFromDisney(
                'History, war', 'assets/cover3.png', 'Mulan Session'),
            FeaturedFromDisney(
                'Sci-Fic', 'assets/cover4.png', 'Beauty and The Beast'),
            FeaturedFromDisney(
                'Sci-Fic', 'assets/cover4.png', 'Beauty and The Beast'),
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor1,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              featured(),
              titleFrom(),
              featuredFrom(),
            ],
          ),
        ),
      ),
    );
  }
}
