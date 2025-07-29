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
  final Completer<InAppWebViewController> _controller =
      Completer<InAppWebViewController>();
  bool _isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TranslatedText(
          "FAQs",
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
        child: Stack(
          children: [
            InAppWebView(
              initialUrlRequest: URLRequest(
                url: WebUri.uri(
                  Uri.parse("https://icar-nsri.res.in/faq.html"),
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


class Aboutus extends StatefulWidget {
  const Aboutus({super.key});

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  final Completer<InAppWebViewController> _controller =
      Completer<InAppWebViewController>();
  bool _isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TranslatedText(
          "About us",
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
        child: Stack(
          children: [
            InAppWebView(
              initialUrlRequest: URLRequest(
                url: WebUri.uri(
                  Uri.parse("https://icar-nsri.res.in/AboutUs.html"),
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

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TranslatedText("Contact Information",
        style: const TextStyle(
          color: Color(0xFF156B34),
          fontWeight: FontWeight.w900,
          fontFamily: "Gilroy Heading",
          fontSize: 25,
        ),
        ),
      backgroundColor: Color(0xFFE8F5E9),
      ),
      body: SingleChildScrollView(
        child: Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    colors: [Colors.white, Colors.green.shade50, Colors.green.shade100],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    ),
    ),
        child:
        Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TranslatedText("Adddress",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              TranslatedText("ICAR-National Soybean Research Institute,Khandwa Road,Indore(M.P.)-452001", style: TextStyle(fontSize: 15),),
              SizedBox(height: 16),
              TranslatedText("Phone",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              _buildContactItem("Dr. Kunwar Harendra Singh, Director", '0731-2476188'),
              _buildContactItem("Dr. Lokesh Kumar Meena (Insect Management)", '9753318347'),
              _buildContactItem("Dr. Rakesh verma (Weed Management)", '9977574793'),
              _buildContactItem("Dr. B.U. Dupare (Crop Mnanagement)", '9425964016'),
              _buildContactItem("Dr. Raghavendra Nargund(Nutrient Management)", '8700864155'),
              _buildContactItem("Dr. M.K. Kuchlan (Seed and Variety)", '9340650457'),
              _buildContactItem("Dr. Sanjeev Kumar (Disease Management)", '9407072727'),
              SizedBox(height: 16),
              TranslatedText("For App Related Information Contact",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              _buildContactItem("Dr. Savita Kolhe, Principal Scientist", '0731-2437911'),
              SizedBox(height: 16),
              TranslatedText("Email",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text('icarnsri@gmail.com'),
              SizedBox(height: 16),
              Divider(),
              TranslatedText("Fax",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text('0731-2470520'),
              SizedBox(height: 16,)
            ],
          ),
        ),
      ),
      ),
    );
  }

  Widget _buildContactItem(String name, String phoneNumber) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TranslatedText(name, style: TextStyle(fontSize: 15),),
        SizedBox(height: 4),
        Text(phoneNumber),
        Divider(),
      ],
    );
  }
}
