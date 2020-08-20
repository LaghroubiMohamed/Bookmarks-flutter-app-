import 'package:bookmarks/models/Bookmarks.dart';
import 'package:bookmarks/widget/ViewWebPage_Widget.dart';
import 'package:flutter/material.dart';
class ViewBookmarkPage extends StatelessWidget {
  Bookmark bookmark;
  ViewBookmarkPage(this.bookmark);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bookmark.title),
      ),
      body:ViewWebPage(bookmark.link),
    );
  }
}

