import 'package:flutter/material.dart';
import 'package:edulibra/data/bookdata.dart';

Widget myBook(BookData book) {
  return Container(
    margin: EdgeInsets.only(right: 12.0),
    width: 122,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 121,
          height: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: NetworkImage(book.bookCover),
                fit: BoxFit.cover,
              )),
        ),
        SizedBox(
          height: 12.0,
        ),
              ],
    ),
  );
}
