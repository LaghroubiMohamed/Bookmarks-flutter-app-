import 'package:bookmarks/models/Bookmarks.dart';
import 'package:bookmarks/util/navigation_util.dart';
import 'package:flutter/material.dart';

class BookmarkListItemWidget extends StatelessWidget {
  Bookmark bookmark;
  BookmarkListItemWidget(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: InkWell(
        splashColor: Colors.blueAccent,
        onTap: () => navToViewBookmarkPage(bookmark, context),
        child: Card(
          elevation: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
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
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
