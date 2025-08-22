import 'package:flutter/material.dart';
import 'package:soybean_gyan/services/TranslatedText.dart';

class ImpInfo extends StatelessWidget {
  const ImpInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: TranslatedText(
          "Recommended Technologies",
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
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.green.shade50,
                //Colors.green.shade100,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title: TranslatedText(
                    "Land Preparation",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Gilroy Regular",
                      color: Color(0xFF00695C),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TranslatedText(
                        "1. Deep Summer Ploughing (once in 3 Years)\n 2. Criss-cross harrowings\n 3. Application of Compost/FYM (5-10 t/ha) OR Poultry Manure (2.5 tonne/ha\n 4.	Planking",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Gilroy Regular",
                          color: Color(0xFF7CB342),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              //SizedBox(height: screenHeight * 0.00916),
              const Divider(
                height: 2,
                thickness: 1,
                indent: 1,
                endIndent: 0,
                color: Colors.grey,
              ),
              Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title: TranslatedText(
                    "Choice of cultivars",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Gilroy Regular",
                      color: Color(0xFF00695C),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: TranslatedText(
                        "1. Select at least two soybean varieties (short and medium duration)\n 2. Ensure seed germination (Min 70%)",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Gilroy Regular",
                          color: Color(0xFF7CB342),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 2,
                thickness: 1,
                indent: 1,
                endIndent: 0,
                color: Colors.grey,
              ),
              Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title: TranslatedText(
                    "Improved varieties ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Gilroy Regular",
                      color: Color(0xFF00695C),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  children: [
                    TranslatedText(
                      "1.	Short Duration (NRC 150)                   \n2.	Medium Duration (RVS 24)                     ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Gilroy Regular",
                        color: Color(0xFF7CB342),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 2,
                thickness: 1,
                indent: 1,
                endIndent: 0,
                color: Colors.grey,
              ),
              Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title: TranslatedText(
                    "Sowing",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Gilroy Regular",
                      color: Color(0xFF00695C),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  children: [
                    ExpansionTile(
                      title: TranslatedText(
                        "a.	Sowing Time",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Gilroy Regular",
                          color: Color(0xFFF57F17),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      children: [
                        TranslatedText(
                          " Time	After the monsoon arrival (100 mm rainfall)",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Gilroy Regular",
                            color: Color(0xFF7CB342),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    const Divider(
                      height: 0,
                      thickness: 1,
                      indent: 1,
                      endIndent: 0,
                      color: Colors.grey,
                    ),
                    ExpansionTile(
                      title: TranslatedText(
                        "b.	Spacing",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Gilroy Regular",
                          color: Color(0xFFF57F17),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TranslatedText(
                            "	Row to row: 30 cm for Short duration (erect type)  45 cm for medium duration (spreading)\n Plant to plant Spacing: 5-10 cm plant to plant",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Gilroy Regular",
                              color: Color(0xFF7CB342),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 0,
                      thickness: 1,
                      indent: 1,
                      endIndent: 0,
                      color: Colors.grey,
                    ),
                    ExpansionTile(
                      title: TranslatedText(
                        "c.	Sowing depth",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Gilroy Regular",
                          color: Color(0xFFF57F17),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TranslatedText(
                            "3-4 cm                                                             ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Gilroy Regular",
                              color: Color(0xFF7CB342),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 0,
                      thickness: 1,
                      indent: 1,
                      endIndent: 0,
                      color: Colors.grey,
                    ),
                    ExpansionTile(
                      title: TranslatedText(
                        "	d.	Sowing method",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Gilroy Regular",
                          color: Color(0xFFF57F17),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TranslatedText(
                            " 1.	Sowing on BBF                 \n 2.	Sowing on Ridge and Furrow                   \n 3.	Sowing on Raised Bed",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Gilroy Regular",
                              color: Color(0xFF7CB342),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 15,
                thickness: 1,
                indent: 1,
                endIndent: 0,
                color: Colors.grey,
              ),
              Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title: TranslatedText(
                    "Seed Treatment",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Gilroy Regular",
                      color: Color(0xFF00695C),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TranslatedText(
                        "1.	Azoxystrobin 2.5% + Thiophanate Methyl 11.25% + Thiamethoxam 25% FS @ 10 ml/kg Seed (Trade Name-Electron/Cascade/Wardeb)\n OR\n 2.	Thiophenate Methyle+ Pyroclostrobin (10 ml/kg seed)  Trade Name: Xelora) followed by Thiamethoxam @ 10 ml/kg seed/Imidacloprid @ 1.25 ml/kg seed.",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Gilroy Regular",
                          color: Color(0xFF7CB342),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 2,
                thickness: 1,
                indent: 1,
                endIndent: 0,
                color: Colors.grey,
              ),
              Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title: TranslatedText(
                    "Fertilizer dose 25:60:40:20 kg NPKS/ha",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Gilroy Regular",
                      color: Color(0xFF00695C),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TranslatedText(
                        "Three optional Sources          \n1.	56 kg Urea+ 375 kg SSP+ 67 kg MOP     \n2.	140 kg DAP+67 Kg MOP + 25 Kg Bentonite Sulphur\n3.	200 kg 12:32:16 + 25 Kg Bentonite Sulphur\n4.	25 kg Zinc Sulphate + 50 kg Iron Sulphate (Optional)",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Gilroy Regular",
                          color: Color(0xFF7CB342),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 2,
                thickness: 1,
                indent: 1,
                endIndent: 0,
                color: Colors.grey,
              ),
              Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title: TranslatedText(
                    "Moisture Conservation Practices",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Gilroy Regular",
                      color: Color(0xFF00695C),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TranslatedText(
                        "1.	Opening of irrigation furrow (if sowing is done by normal seed drill)\n2.	Mulching with wheat/chickpea straw to reduce evapotranspiration",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Gilroy Regular",
                          color: Color(0xFF7CB342),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 2,
                thickness: 1,
                indent: 1,
                endIndent: 0,
                color: Colors.grey,
              ),
              Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title: TranslatedText(
                    "Drought",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Gilroy Regular",
                      color: Color(0xFF00695C),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TranslatedText(
                        "1.	Application of lifesaving irrigation before the development of soil cracks.\n2.	Straw mulching (5 tonne/ha).\n3.	Draining out excess rains in case of waterlogging",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Gilroy Regular",
                          color: Color(0xFF7CB342),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 2,
                thickness: 1,
                indent: 1,
                endIndent: 0,
                color: Colors.grey,
              ),
              Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title: TranslatedText(
                    "Weed Management",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Gilroy Regular",
                      color: Color(0xFF00695C),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TranslatedText(
                        "1.	Spray of Pre-emergence Herbicide Diclosulum Diclosulam 84% WDG @ 26-30 g/ha\n2.	Dora/Kulpa at 20 DAS\n3.	Spray of Post Emergence Herbicide Propaquizafop 2.5% + Imazethapyr 3.75% w/w ME @ 2 litre/ha",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Gilroy Regular",
                          color: Color(0xFF7CB342),
                        ),
                      ),
                    ),
                    ExpansionTile(
                      title: TranslatedText(
                        "Use of Nozzle for Spraying",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Gilroy Regular",
                          color: Color(0xFFF57F17),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      children: [
                        TranslatedText(
                          "1.	For Insecticide: Cone nozzle             \n2.	For Herbicide: Flood jet/Flat fan             ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Gilroy Regular",
                            color: Color(0xFF7CB342),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 2,
                indent: 1,
                endIndent: 0,
                color: Colors.grey,
              ),
              Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title: TranslatedText(
                    "Compatible combination of Herbicide+Insecticide",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Gilroy Regular",
                      color: Color(0xFF00695C),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TranslatedText(
                        "1.	Chlorantraniliprole 18.5 SC (150 ml/ha)+ Imazethapyr 10 SL (1 lit/ha)\n2.	Chlorantraniliprole 18.5 SC (150 ml/ha)+ Indoxacarb 15.8 EC (333 ml/ha\n3.	Indoxacarb 15.8 EC (333 ml/ha)+ Imazethapyr 10 SL (1 lit/ha)\n4.	Indoxacarb 15.8 EC (333 ml/ha)+ Quizalofop ethyl 5 EC (1.00 lit/ha).",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Gilroy Regular",
                          color: Color(0xFF7CB342),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 2,
                thickness: 1,
                indent: 1,
                endIndent: 0,
                color: Colors.grey,
              ),
              Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title: TranslatedText(
                    "Water quantity for Spray",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Gilroy Regular",
                      color: Color(0xFF00695C),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TranslatedText(
                        "1.	450 l/ha for knapsack/ tractor drawn sprayer \nOR\n2.	120 l/ha for power sprayer.",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Gilroy Regular",
                          color: Color(0xFF7CB342),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 2,
                thickness: 1,
                indent: 1,
                endIndent: 0,
                color: Colors.grey,
              ),
              Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title: TranslatedText(
                    "Insect Control",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Gilroy Regular",
                      color: Color(0xFF00695C),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  children: [
                    ExpansionTile(
                      title: TranslatedText(
                        "Preventive Spray",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Gilroy Regular",
                          color: Color(0xFFF57F17),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TranslatedText(
                            "Spraying with Chlorantraniliprole 18.5 SC. @ 150 ml/ha at 15-20 DAS or 4-5 days before flower initiation control defoliators for the next 30 days.",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Gilroy Regular",
                              color: Color(0xFF7CB342),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 0,
                      thickness: 1,
                      indent: 1,
                      endIndent: 0,
                      color: Colors.grey,
                    ),
                    ExpansionTile(
                      title: TranslatedText(
                        "White Grubs",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Gilroy Regular",
                          color: Color(0xFFF57F17),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TranslatedText(
                            "1.	Installation of light traps.           \n2.	Soil application of Chlorpyrifos (2.5% granular) @16 kg/ha between."
                           , style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Gilroy Regular",
                              color: Color(0xFF7CB342),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 0,
                      thickness: 1,
                      indent: 1,
                      endIndent: 0,
                      color: Colors.grey,
                    ),
                    ExpansionTile(
                      title: TranslatedText(
                        "White Fly/Stem Fly/Sucking insects",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Gilroy Regular",
                          color: Color(0xFFF57F17),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TranslatedText(
                            "Thiamethoxam 12.6% + Lambda-cyhalothrin 9.5% ZC @125 ml/ha or or Betacyfluthrin + Imidacloprid (350 ml/ha) (Trade name Alika)",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Gilroy Regular",
                              color: Color(0xFF7CB342),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 0,
                      thickness: 1,
                      indent: 1,
                      endIndent: 0,
                      color: Colors.grey,
                    ),
                    ExpansionTile(
                      title: TranslatedText(
                        "White Fly/Stem Fly/Girdle beetle/Sucking insects",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Gilroy Regular",
                          color: Color(0xFFF57F17),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TranslatedText(
                            "Beta-Cyfluthrin + Imidacloprid 300 OD (8.49 + 19.81 % w/w) (350 ml/h) (Trade name-Solomon)",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Gilroy Regular",
                              color: Color(0xFF7CB342),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 1,
                      thickness: 1,
                      indent: 1,
                      endIndent: 0,),
                    ExpansionTile(
                      title: TranslatedText(
                        "Defoliators, girdle beetle and pod borer",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Gilroy Regular",
                          color: Color(0xFFF57F17),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      children: [
                        TranslatedText(
                          "Chlorantraniliprole 18.5% SC (150 ml/ha) Trade Name Coragen",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Gilroy Regular",
                            color: Color(0xFF7CB342),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    const Divider(
                      height: 2,
                      thickness: 1,
                      indent: 1,
                      endIndent: 0,),
                    Theme(
                      data: Theme.of(
                        context,
                      ).copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        title: TranslatedText(
                          "Other possible measures of insect control",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Gilroy Regular",
                            color: Color(0xFFF57F17),
                          ),
                          textAlign: TextAlign.left,
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TranslatedText(
                              "1.	Destruction/uprooting of affected plants\n 2.	Use of Yellow Sticky Traps \n 3.	Pheromone Traps (for heliothis and Spodoptera)\n4.	Spray of NPV (250 LE/ha).\n 5.	Installation of T shaped bird perches",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Gilroy Regular",
                                color: Color(0xFF7CB342),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 15,
                thickness: 1,
                indent: 1,
                endIndent: 0,
                color: Colors.grey,
              ),
              Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title: TranslatedText(
                    "Trap crop",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Gilroy Regular",
                      color: Color(0xFF00695C),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TranslatedText(
                        "Trap crop with Daincha for girdle beetle, Marigold for pod borer and Suva for defoliators (as border crop).",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Gilroy Regular",
                          color: Color(0xFF7CB342),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 2,
                thickness: 1,
                indent: 1,
                endIndent: 0,
                color: Colors.grey,
              ),
              Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title: TranslatedText(
                    "Rodent Control",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Gilroy Regular",
                      color: Color(0xFF00695C),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TranslatedText(
                        "Keeping the poison baits (15-20/ha) made of Flocoumafen 0.005% Block Bait (Strom) near the rat holes.",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Gilroy Regular",
                          color: Color(0xFF7CB342),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 2,
                thickness: 1,
                indent: 1,
                endIndent: 0,
                color: Colors.grey,
              ),
              Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title: TranslatedText(
                    "Disease control",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Gilroy Regular",
                      color: Color(0xFF00695C),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TranslatedText(
                        "1.	Spray with Fluxapyroxad 167 g/l + Pyraclostrobin 333 g/l SC (300 g/ha) OR\n2.	Tebuconazole 10%+Sulphur 65% WG (1250 g/ha) OR\n3.	Thiophenate Methyle @500 g/ha",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Gilroy Regular",
                          color: Color(0xFF7CB342),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 2,
                thickness: 1,
                indent: 1,
                endIndent: 0,
                color: Colors.grey,
              ),
              Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title: TranslatedText(
                    "Seed Production",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Gilroy Regular",
                      color: Color(0xFF00695C),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TranslatedText(
                        "1.	Roughing (removal of off-type plants belonging to other varieties) in order to maintain seed purity.\n2.	Manual harvesting and threshing.",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Gilroy Regular",
                          color: Color(0xFF7CB342),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 2,
                thickness: 1,
                indent: 1,
                endIndent: 0,
                color: Colors.grey,
              ),
              Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title: TranslatedText(
                    "Harvesting time",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Gilroy Regular",
                      color: Color(0xFF00695C),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TranslatedText(
                        "1.	Harvest soybean crop immediately after the 90% pods changes the color to yellow. This will not have adverse effect on the seed germination.\n2.	The harvested crop must be threshed after sun drying. If the threshing is to be done later, it should be stored at safe place protecting from rains.",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Gilroy Regular",
                          color: Color(0xFF7CB342),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 2,
                thickness: 1,
                indent: 1,
                endIndent: 0,
                color: Colors.grey,
              ),
              Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title: TranslatedText(
                    "Threshing",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Gilroy Regular",
                      color: Color(0xFF00695C),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TranslatedText(
                        "If the produce is to be used for seed purpose in the next season, thresh the soybean at 350 to 400 RPM thresher to avoid the loss of seed germination.",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Gilroy Regular",
                          color: Color(0xFF7CB342),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 2,
                thickness: 1,
                indent: 1,
                endIndent: 0,
                color: Colors.grey,
              ),
              Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title: TranslatedText(
                    "Storage",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Gilroy Regular",
                      color: Color(0xFF00695C),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TranslatedText(
                        "1.	The storage place should be cool with aeration and insect free.\n2.	The soybean bags should be kept upright as far as possible.\n3.	If stacking is to be done, it should be only up to 4-5 bags of not more than 5 feet height (using platform)..",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Gilroy Regular",
                          color: Color(0xFF7CB342),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 2,
                thickness: 1,
                indent: 1,
                endIndent: 0,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
