import 'package:bookmarks/models/Bookmarks.dart';
import 'package:bookmarks/util/navigation_util.dart';
import 'package:flutter/material.dart';

class BookmarkGridItemWidget extends StatelessWidget {
  final Bookmark bookmark;

  BookmarkGridItemWidget(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 10, left: 6, right: 6, bottom: 0),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: InkWell(
          splashColor: Colors.blueAccent,
          onTap: () => navToViewBookmarkPage(bookmark, context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                bookmark.title,
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                bookmark.link,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
