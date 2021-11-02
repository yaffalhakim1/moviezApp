import 'package:flutter/material.dart';
import 'package:moviez/theme.dart';

class ListFilm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30, left: 24),
      width: 300,
      height: 300,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(21),
            child: Image.asset(
              'assets/cover1.png',
              height: 200,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'John Wick 4',
                    style: titleTextStyle.copyWith(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Action, crime',
                    style: subtitleTextStyle.copyWith(
                        fontSize: 16, fontWeight: regular),
                  )
                ],
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
