import 'package:flutter/material.dart';
import 'package:soybean_gyan/services/TranslatedText.dart';
import 'dart:async';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class faqs extends StatefulWidget {
  const faqs({super.key});

  @override
  State<faqs> createState() => _faqsState();
}

class _faqsState extends State<faqs> {
  final Completer<InAppWebViewController> _controller = Completer<InAppWebViewController>();
  bool _isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TranslatedText("Advisory", style: const TextStyle(
          color: Color(0xFF156B34),
          fontWeight: FontWeight.w900,
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
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Stack(
          children: [
            InAppWebView(
              initialUrlRequest: URLRequest(
                url: WebUri.uri(Uri.parse("https://icar-nsri.res.in/Advisory.html")),
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
            if (_isLoading)
              Center(child: CircularProgressIndicator()),
          ],
        ),
      ),
    );
  }
}