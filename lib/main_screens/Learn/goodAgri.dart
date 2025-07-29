import 'package:flutter/material.dart';
import 'package:soybean_gyan/services/TranslatedText.dart'; // Assuming you've generated the localization files.

class GoodAgriPracticesScreen extends StatelessWidget {
  const GoodAgriPracticesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TranslatedText(
          "Good Agri Practices",
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
        padding: const EdgeInsets.all(0),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.green.shade50,
                Colors.green.shade100,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                TranslatedText(
                  "Good agricultural practices for Soybean - General Guidelines",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Gilroy Regular",
                    color: Color(0xFF00796B),
                  ),
                ),
                SizedBox(height: 10),
                TranslatedText(
                  "Good Agricultural Practices (GAPs) are a set of principles, regulations and technical recommendations applicable to production, processing and food transport, addressing human health care, environment protection and improvement of worker conditions and their families. It has been documented that implementation of GAP encourages promotion of the optimum use of resources such as pesticides, fertilizers, and water, and eco-friendly agriculture.",
                 style: TextStyle(
                   fontSize: 17,
                 ),
                ),
                SizedBox(height: 16),
                SectionTitle("Soil management"),
                BulletText("Select the soil with moderate to high fertility."),
                BulletText(
                  "Plough in crop residues and vegetation to improve soil fertility. Break up large lumps of soil and level",
                ),
                BulletText(" Frequently apply well decomposed compost or other organic materials (including crop residues) and incorporate in to the soil."),
                BulletText(
                  "If necessary, acid soil can be corrected by liming, whereas alkaline soil can be corrected by gypsum.",
                ),
                BulletText(
                  "Do not plant soybean in low land and too shallow soils.",
                ),
                BulletText("Avoid over tillage."),

                SizedBox(height: 16),
                SectionTitle("Seed"),
                BulletText(
                  "Look for varieties which are resistant to biotic (weeds, insect-pest and disease) and abiotic (drought, heat) factors.",
                ),
                BulletText(
                  "Plant more than 2 varieties (Varietal cafeteria approach).",
                ),
                BulletText(
                  "Test seed for germination before the start of the rainy season.",
                ),
                BulletText("Do not recycle seed for more than 3 seasons."),
                BulletText(
                  "Treat the seed with potent cultures of Tricoderma viride 5 g/kg seed than inoculate with Bradyrhizobium japonicum and PSB/PSM, both @t 5 g/kg seed.",
                ),

                SizedBox(height: 16),
                SectionTitle("Use of fertilizers"),
                BulletText("Apply the required level of nutrients through right sources at the right time and right place. "),
                BulletText("Use organic manure/well composted manure."),
                BulletText(
                  "Do not apply nitrogenous fertilizer in standing crop.",
                ),
                BulletText(
                  "Keep fertilizers in a dry, clean and sheltered place.",
                ),

                SizedBox(height: 16),
                SectionTitle("Planting"),
                BulletText(" Plant soybean with broad bed furrow (BBF) or ridge furrow (FIRBS) or open furrow after every 3/6/9 rows of soybean to avoid the adverse effect of drought or excess rain"),
                BulletText(
                  "Apply required seed rate based on seed index and germinability.",
                ),
                BulletText("Maintain planting geometry."),
                BulletText("Use 1.25 times seed quantity in delayed planting."),

                SizedBox(height: 16),
                SectionTitle("Insect-pest and disease management"),
                BulletText(
                  "Monitor the crop regularly through effective surveillance.",
                ),
                BulletText("Always use preventive methods (using disease-free seeds, adopting crop rotation and inter-cropping, crops with pest deterring value (trap crop-Suva), and instant removal of infected/diseased materials)."),
                BulletText("Adopt physical control measures (simple hand-picking, erecting traps and mulching) "),
                BulletText(
                  "If really necessary, use bio-pesticides/ synthetic pesticides.",
                ),
                BulletText("Follow chemical rotation."),
                BulletText("Weeding in scheduled time frame."),

                SizedBox(height: 16),
                SectionTitle("Use of pesticides"),
                BulletText("Only purchase and use registered pesticides."),
                BulletText(
                  "Do not apply pesticides during strong winds and heavy rain.",
                ),
                BulletText(
                  "Spraying of insecticides may be done preferably during morning/evening.",
                ),
                BulletText("Strictly adhere to the withholding period (i.e. the lag between pesticide application and harvesting) on the pesticide label."),
                BulletText(
                  "Hold pesticides in original containers and keep tightly closed.",
                ),
                BulletText("Do not recycle or re-use pesticide containers."),
                BulletText(
                  "Spray pesticides with complete protective clothing.",
                ),

                SizedBox(height: 16),
                SectionTitle("Irrigation"),
                BulletText(
                  "Adopt micro-irrigation methods such as drip or sprinkler.",
                ),
                BulletText(
                  "Irrigate fields early in the morning, late in the evening or at night during long dry spell at critical stages i.e. seedling, flowering and pod filling.",
                ),
                BulletText(
                  "Irrigate the soybean crop before development of soil cracks.",
                ),
                BulletText("Avoid uneven application of water."),

                SizedBox(height: 16),
                SectionTitle("Harvesting and post-harvesting"),
                BulletText(
                  "Harvest at the right stage of maturity to avoid pod shattering.",
                ),
                BulletText(
                  "If the produce is to be used for seed purposes, thresh the material at the speed of 350 to 400 rpm of thresher.",
                ),
                BulletText(
                  "If the produce is to be kept as seed for next season, keep the seed in gunny bags not more than 40 kg capacity than store in a cool and dry place."
                ),
                BulletText(
                  "Always keep containers, tools, and packing areas clean.",
                ),
                SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SectionTitle("© Copyright 2019 - Soybean Gyan, ICAR-National Soybean Research Institute, All Rights Reserved."),
                ),
                SizedBox(height: 10,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String text;
  const SectionTitle(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return TranslatedText(
      text,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xFF156B34),
      ),
    );
  }
}

class BulletText extends StatelessWidget {
  final String text;
  const BulletText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("• ", style: TextStyle(fontSize: 17)),
          Expanded(child: TranslatedText(text)),
        ],
      ),
    );
  }
}