import 'package:bookmarks/models/Bookmarks.dart';
import 'package:flutter/material.dart';

class AddBookmarkPage extends StatefulWidget {
  @override
  _AddBookmarkPageState createState() => _AddBookmarkPageState();
}

class _AddBookmarkPageState extends State<AddBookmarkPage> {
  final _titleTextControler = TextEditingController();
  final _urlTextControler = TextEditingController();
  final _linkFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Bookmark'),
        centerTitle: true,
      ),
      floatingActionButton: Builder(
        builder: (BuildContext context) => FloatingActionButton(
          child: Icon(Icons.check),
          backgroundColor: Colors.green,
          onPressed: () {
            String title = _titleTextControler.text;
            String link = _urlTextControler.text;

            Scaffold.of(context).hideCurrentSnackBar();

            if (isInputValid(context, title, link)) {
              Navigator.pop(context, Bookmark(title, link));
              print(title);
              print(link);
            } else {
              showInputError(context, title, link);
            }
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              //autofocus: true,
              controller: _titleTextControler,
              onFieldSubmitted: (textInput) {
                FocusScope.of(context).requestFocus(_linkFocusNode);
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: "title",
                hintText: "Bookmark Title",
                icon: Icon(Icons.title),
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              focusNode: _linkFocusNode,
              controller: _urlTextControler,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: "URL",
                helperText: "Don't forget the \"https://\" ",
                hintText: "Bookmark Link ",
                icon: Icon(Icons.link),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _titleTextControler.dispose();
    _linkFocusNode.dispose();
    _urlTextControler.dispose();
    super.dispose();
  }

  bool isInputValid(context, String title, String link) {
    return title.isNotEmpty && link.isNotEmpty;
  }

  void showInputError(BuildContext context, String title, String link) {
    if (title.isEmpty && link.isEmpty) {
      showSnackBar(context, "You have To Enter a Title and Link First");
    } else {
      if (title.isEmpty) {
        showSnackBar(context, "Title Should Not Be Empty");
      } else {
        if (link.isEmpty) {
          showSnackBar(context, "Link Should Not Be Empty");
        }
      }
    }
  }

  void showSnackBar(context, String message) =>
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text(
          message,
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.blue,
      ));
}
