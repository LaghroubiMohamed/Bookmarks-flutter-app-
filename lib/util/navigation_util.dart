import 'package:bookmarks/models/Bookmarks.dart';
import 'package:bookmarks/pages/addBookmarkPage.dart';
import 'package:bookmarks/pages/view_bookmark_page.dart';
import 'package:flutter/material.dart';

void navToViewBookmarkPage(Bookmark bookmark, BuildContext context) =>
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => ViewBookmarkPage(bookmark)));

Future navToAddBookmarkPage(BuildContext context) {
  return Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => AddBookmarkPage()));
}
