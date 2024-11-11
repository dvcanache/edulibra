import 'package:flutter/material.dart';

class BookData {
  String bookCover;
  String bookName;
  String bookGenre;
  String bookpageNum;
  String bookDescription;
  String bookContent;

  BookData(
      this.bookCover,
      this.bookName,
      this.bookGenre,
      this.bookDescription,
      this.bookpageNum,
      [this.bookContent='']
      );
  void openBook()
  {
    @override
    Widget build(BuildContext context) {
      return GestureDetector( 
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('hola'),
              SizedBox(height: 5),
              Text('muy buenas'),
            ],
          ),
        ),
      );
    }
  }
}


