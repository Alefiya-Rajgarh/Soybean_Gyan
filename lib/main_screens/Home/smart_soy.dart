import 'package:flutter/material.dart';
import 'package:soybean_gyan/services/TranslatedText.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'dart:async';

class SmartSoy extends StatefulWidget {
  const SmartSoy({super.key});

  @override
  State<SmartSoy> createState() => _SmartSoyState();
}

class _SmartSoyState extends State<SmartSoy> {
  final Completer<InAppWebViewController> _controller =
      Completer<InAppWebViewController>();
  bool _isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TranslatedText(
          "Smart Soy",
          style: const TextStyle(
            color: Color(0xFF156B34),
            fontWeight: FontWeight.w700,
            fontFamily: "Gilroy Heading",
            fontSize: 25,
          ),
        ),
        backgroundColor: Color(0xFFE8F5E9),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.green.shade50, Colors.green.shade100],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            InAppWebView(
              initialUrlRequest: URLRequest(
                url: WebUri.uri(
                  Uri.parse("http://14.139.54.71/imagedet"),
                ),
              ),
              onLoadStart: (InAppWebViewController controller, Uri? url) {
                setState(() {
                  _isLoading = true;
                });
              },
              onLoadStop: (InAppWebViewController controller, Uri? url) {
                setState(() {
                  _isLoading = false;
                });
              },
              onWebViewCreated: (InAppWebViewController controller) {
                _controller.complete(controller);
              },
            ),
            if (_isLoading) Center(child: CircularProgressIndicator()),
          ],
        ),
      ),
    );
  }
}
