import 'package:bookmarks/pages/BookmarksPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(Bookmarks());

class Bookmarks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BookmarksPage(),
    );
  }
}
