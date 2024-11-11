import 'package:flutter/material.dart';
import 'package:edulibra/data/bookdata.dart';
import 'package:url_launcher/url_launcher.dart';

Widget newBook(BookData book) {
  return InkWell(
    onTap: () {
      
      print('polo');
      book.openBook();

    },
    child: Container(
      width: double.infinity,
      height: 150.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 8.0),
            height: 128.0,
            width: 83.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: NetworkImage(book.bookCover),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book.bookName,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  book.bookGenre,
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                 SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: [
                    Icon(Icons.content_copy),
                    Text(book.bookpageNum.toString()),
                    SizedBox(width: 20.0),
                  ],
                )
              ],
            ),
          ),
          ElevatedButton(
            child: Icon(Icons.bookmark_border),
            onPressed:() async {
              String url = book.bookDescription;
              if (await canLaunch(url)){
                await launch(url);
              }
            },//_launchURL,
            //Icon(Icons.bookmark_border),
          )
        ],
      ),
    ),
  );
}
/*
_launchURL() async {
  const url = 'https://google.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}*/

