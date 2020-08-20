import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class ViewWebPage extends StatefulWidget {
  String url;
  ViewWebPage(this.url);

  @override
  _ViewWebPageState createState() => _ViewWebPageState();
}

class _ViewWebPageState extends State<ViewWebPage> {
  var _isLoadingPage = true;
  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: Alignment.center,
      children: [
        WebView(
          onPageFinished: (url){
            setState(() {
              _isLoadingPage= false;
            });
          },
          initialUrl: widget.url,
        ),
        _isLoadingPage ? CircularProgressIndicator(): Container(),
      ],
    );
  }
}


