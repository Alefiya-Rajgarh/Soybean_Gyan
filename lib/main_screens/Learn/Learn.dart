import 'package:flutter/material.dart';
import 'learn_data.dart';
import 'package:soybean_gyan/services/TranslatedText.dart';
import 'pre.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'goodAgri.dart';

class Learn extends StatefulWidget {
  const Learn({super.key});

  @override
  State<Learn> createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.green.shade50, Colors.green.shade100],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          padding: EdgeInsets.all(15),
          itemCount: learnings.length,
          itemBuilder: (context, index) {
            final learn = learnings[index];
            return InkWell(
              onTap: () {
                if (index == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => YouTubeLauncher()),
                  );
                } else if (index == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WebViewPage()),
                  );
                } else if (index == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Predisposing()),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GoodAgriPracticesScreen()),
                  );
                }
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(learn.image_path),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5),
                      BlendMode.darken,
                    ),
                  ),
                ),
                alignment: Alignment.center,
                child: TranslatedText(
                  learn.name,
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Gilroy Heading",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class YouTubeLauncher extends StatelessWidget {
  final String youtubeUrl =
      "https://www.youtube.com/channel/UCNdY5AsfPZqsCO8IxkAuSyQ?view_as=subscriber";

  Future<void> _launchYouTube() async {
    Uri url = Uri.parse(youtubeUrl);

    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        mode:
            LaunchMode
                .externalApplication, // Opens the URL in an external app or browser
      );
    } else {
      throw "Could not launch $youtubeUrl";
    }
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _launchYouTube();
    });

    return Scaffold(
      appBar: AppBar(
        title: TranslatedText(
          "Launching YouTube",
          style: const TextStyle(
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
        child: Center(
          child: TranslatedText(
            "Opening YouTube Channel...",
            style: TextStyle(fontSize: 18, color: Colors.black54),
          ),
        ),
      ),
    );
  }
}

class WebViewPage extends StatefulWidget {
  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
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
