import 'package:bookmarks/models/Bookmarks.dart';
import 'package:bookmarks/util/navigation_util.dart';
import 'package:bookmarks/widget/BookmarksGridWidget.dart';
import 'package:bookmarks/widget/BookmarksListWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookmarksPage extends StatefulWidget {
  @override
  _BookmarksPageState createState() => _BookmarksPageState();
}

class _BookmarksPageState extends State<BookmarksPage> {
  bool isGridMode = true;
  List<Bookmark> bookmarksList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: isGridMode
                  ? Icon(Icons.list)
                  : Icon(
                      Icons.grid_on,
                      color: Colors.yellow,
                    ),
              onPressed: () {
                setState(() {
                  isGridMode = !isGridMode;
                });
              }),
        ],
        title: Text("Bookmarks",
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
      ),
      body: isGridMode
          ? BookmarksGridWidget(bookmarksList)
          : BookmarksListWidget(bookmarksList),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => onAddButtonPressed(context),
        icon: Icon(Icons.add),
        label: Text("Add"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Future<void> onAddButtonPressed(BuildContext context) async {
    final result = await navToAddBookmarkPage(context);

    if (result != null && result is Bookmark) {
      setState(() {
        bookmarksList.add(result);
      });
    }
  }
}
