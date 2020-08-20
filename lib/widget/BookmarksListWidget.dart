import 'package:bookmarks/models/Bookmarks.dart';
import 'package:bookmarks/widget/BookmarkListItemWidget.dart';
import 'package:flutter/material.dart';

class BookmarksListWidget extends StatelessWidget {
  final List<Bookmark> bookmarklist;
  BookmarksListWidget(this.bookmarklist);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, int index) {
        return BookmarkListItemWidget(bookmarklist[index]);
      },
      itemCount: bookmarklist.length,
    );
  }
}
