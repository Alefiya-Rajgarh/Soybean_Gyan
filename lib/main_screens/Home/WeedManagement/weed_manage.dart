import 'package:flutter/material.dart';
import 'package:soybean_gyan/services/TranslatedText.dart';
import 'weed_data.dart';
import 'weed_detailscreen.dart';
import 'types_of_weed.dart';

class WeedManage extends StatefulWidget {
  const WeedManage({super.key});

  @override
  State<WeedManage> createState() => _WeedManageState();
}

class _WeedManageState extends State<WeedManage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TranslatedText(
          "Weed Management",
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
        child: ListView.builder(
          padding: EdgeInsets.all(15),
          itemCount: allweedDetail.length,
          itemBuilder: (context, index) {
            final weed = allweedDetail[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      if (index == 0) {
                        return TypesOfWeeds();
                      } else if (index != 0) {
                        return WeedDetailscreen(weed: weed);
                      } else
                        return Placeholder();
                    },
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(weed.image_path),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3),
                      BlendMode.darken,
                    ),
                  ),
                ),
                alignment: Alignment.center,
                child: TranslatedText(
                  weed.title,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontFamily: "Gilroy Heading",
                  ), textAlign: TextAlign.center,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
