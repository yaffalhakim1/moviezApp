import 'package:flutter/material.dart';
import 'package:moviez/theme.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget searchBar() {
      return Center(
        child: Container(
          color: Color(0xff282A3E),
          width: 327,
          height: 45,
          margin: EdgeInsets.symmetric(vertical: 30),
          child: TextFormField(
            decoration: InputDecoration.collapsed(
              hintText: 'search here',
              hintStyle:
                  titleTextStyle.copyWith(fontSize: 16, fontWeight: regular),
            ),
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor1,
        body: Container(
          child: Column(
            children: [
              searchBar(),
            ],
          ),
        ),
      ),
    );
  }
}
