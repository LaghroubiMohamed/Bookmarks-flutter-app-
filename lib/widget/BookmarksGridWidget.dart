import 'package:bookmarks/models/Bookmarks.dart';
import 'package:bookmarks/widget/BookmarkGridItemWidget.dart';
import 'package:flutter/material.dart';

class BookmarksGridWidget extends StatelessWidget {
  final List<Bookmark> bookmarklist;
  BookmarksGridWidget(this.bookmarklist);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        childAspectRatio: 2,
        crossAxisSpacing: 12,
      ),
      itemBuilder: (context, int index) {
        return BookmarkGridItemWidget(bookmarklist[index]);
      },
      itemCount: bookmarklist.length,
    );
  }
}
