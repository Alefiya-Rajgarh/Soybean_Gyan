// import 'package:flutter/material.dart';
// import 'package:soybean_gyan/services/TranslatedText.dart';
//
// class Predisposing extends StatelessWidget {
//   const Predisposing({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final List<Map<String, dynamic>> tableData = [
//       {
//         "No": 1,
//         "Variety": "NRC 157 (M.P)",
//         "Year": 2022,
//         "Duration": "93",
//         "Yield": 16,
//       },
//       {
//         "No": 2,
//         "Variety": "Indore Soy-131 (NRC 131)",
//         "Year": 2022,
//         "Duration": 92,
//         "Yield": 15,
//       },
//       {
//         "No": 3,
//         "Variety": "Indore Soy-136 (NRC 136)",
//         "Year": 2022,
//         "Duration": 105,
//         "Yield": 16,
//       },
//       {
//         "No": 4,
//         "Variety": "MAUS 725 (Maharashtra)",
//         "Year": 2022,
//         "Duration": 92 - 96,
//         "Yield": 24,
//       },
//       {
//         "No": 5,
//         "Variety": "NRC 152",
//         "Year": 2022,
//         "Duration": 100,
//         "Yield": 16,
//       },
//       {
//         "No": 6,
//         "Variety": "NRC 150",
//         "Year": 2022,
//         "Duration": 100,
//         "Yield": 16,
//       },
//       {
//         "No": 7,
//         "Variety": "Him Palam Soya (Himso 1689) ",
//         "Year": 2022,
//         "Duration": 100,
//         "Yield": 16,
//       },
//       {
//         "No": 8,
//         "Variety": "Phule Durva (KDS 992)* MS)",
//         "Year": 2022,
//         "Duration": 100,
//         "Yield": 16,
//       },
//       {
//         "No": 9,
//         "Variety": "JS 21-72",
//         "Year": 2022,
//         "Duration": 100,
//         "Yield": 16,
//       },
//       {
//         "No": 10,
//         "Variety": "RVSM 2011-35(RVSM-35) ",
//         "Year": 2022,
//         "Duration": 100,
//         "Yield": 16,
//       },
//       {
//         "No": 11,
//         "Variety": "NRC 138 (Indore Soya -138) ",
//         "Year": 2022,
//         "Duration": 100,
//         "Yield": 16,
//       },
//       {
//         "No": 12,
//         "Variety": "AMS 100-39 (PDKV Amba)",
//         "Year": 2022,
//         "Duration": 100,
//         "Yield": 16,
//       },
//       {
//         "No": 13,
//         "Variety": "RVS 76 (Raj Vijay Soybean)",
//         "Year": 2022,
//         "Duration": 100,
//         "Yield": 16,
//       },
//       {
//         "No": 14,
//         "Variety": "NRC 142 (Indore Soya-142)",
//         "Year": 2022,
//         "Duration": 100,
//         "Yield": 16,
//       },
//       {
//         "No": 15,
//         "Variety": "MACS 1520",
//         "Year": 2022,
//         "Duration": 100,
//         "Yield": 16,
//       },
//       {
//         "No": 16,
//         "Variety": "NRC 130 (Indore Soya- 130)",
//         "Year": 2022,
//         "Duration": 100,
//         "Yield": 16,
//       },
//       {
//         "No": 17,
//         "Variety": "RSC 10-46",
//         "Year": 2022,
//         "Duration": 100,
//         "Yield": 16,
//       },
//       {
//         "No": 18,
//         "Variety": "RSC 10-52 ",
//         "Year": 2022,
//         "Duration": 100,
//         "Yield": 16,
//       },
//       {
//         "No": 19,
//         "Variety": "MS-MB-5-18 (Suvarna Soya)",
//         "Year": 2022,
//         "Duration": 100,
//         "Yield": 16,
//       },
//       {"No": 20, "Variety": "", "Year": 2022, "Duration": 100, "Yield": 16},
//       {"No": 21, "Variety": "", "Year": 2022, "Duration": 100, "Yield": 16},
//       {"No": 22, "Variety": "", "Year": 2022, "Duration": 100, "Yield": 16},
//       {"No": 23, "Variety": "", "Year": 2022, "Duration": 100, "Yield": 16},
//       {"No": 24, "Variety": "", "Year": 2022, "Duration": 100, "Yield": 16},
//       {"No": 25, "Variety": "", "Year": 2022, "Duration": 100, "Yield": 16},
//       {"No": 26, "Variety": "", "Year": 2022, "Duration": 100, "Yield": 16},
//       {"No": 27, "Variety": "", "Year": 2022, "Duration": 100, "Yield": 16},
//     ];
//
//     return Scaffold(
//       appBar: AppBar(
//         title: TranslatedText(
//           "pre",
//           style: const TextStyle(
//             color: Color(0xFF156B34),
//             fontWeight: FontWeight.w900,
//             fontFamily: "Gilroy Heading",
//             fontSize: 25,
//           ),
//         ),
//         backgroundColor: Color(0xFFE8F5E9),
//       ),
//       backgroundColor: Colors.green.shade50,
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: TranslatedText(
//                 "Table: Zone-wise Recommended Soybean Varieties",
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   fontFamily: "Gilroy Regular",
//                 ),
//                 textAlign: TextAlign.left,
//               ),
//             ),
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: DataTable(
//                 columnSpacing: 12,
//                 columns: const [
//                   DataColumn(
//                     label: TranslatedText(
//                       'No',
//                       style: TextStyle(
//                         fontSize: 15,
//                         fontWeight: FontWeight.w600,
//                         fontFamily: "Gilroy Heading",
//                         color: Colors.black87,
//                       ),
//                     ),
//                   ),
//                   DataColumn(
//                     label: TranslatedText(
//                       'Variety',
//                       style: TextStyle(
//                         fontWeight: FontWeight.w600,
//                         fontFamily: "Gilroy Heading",
//                         color: Colors.black87,
//                       ),
//                     ),
//                   ),
//                   DataColumn(
//                     label: TranslatedText(
//                       'Year',
//                       style: TextStyle(
//                         fontWeight: FontWeight.w600,
//                         fontFamily: "Gilroy Heading",
//                         color: Colors.black87,
//                       ),
//                     ),
//                   ),
//                   DataColumn(
//                     label: TranslatedText(
//                       'Duration\n(days)',
//                       style: TextStyle(
//                         fontWeight: FontWeight.w600,
//                         fontFamily: "Gilroy Heading",
//                         color: Colors.black87,
//                       ),
//                     ),
//                   ),
//                   DataColumn(
//                     label: TranslatedText(
//                       'Av. Yield\n(q/ha)',
//                       style: TextStyle(
//                         fontWeight: FontWeight.w600,
//                         fontFamily: "Gilroy Heading",
//                         color: Colors.black87,
//                       ),
//                     ),
//                   ),
//                 ],
//                 rows:
//                     tableData.map((row) {
//                       return DataRow(
//                         cells: [
//                           DataCell(
//                             TranslatedText(
//                               row["No"].toString(),
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w600,
//                                 fontFamily: "Gilroy Regular",
//                                 color: Color(0xFF00796B),
//                               ),
//                             ),
//                           ),
//                           DataCell(
//                             TranslatedText(
//                               row["Variety"],
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w600,
//                                 fontFamily: "Gilroy Regular",
//                                 color: Color(0xFF00796B),
//                               ),
//                             ),
//                           ),
//                           DataCell(
//                             TranslatedText(
//                               row["Year"].toString(),
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w600,
//                                 fontFamily: "Gilroy Regular",
//                                 color: Color(0xFF00796B),
//                               ),
//                             ),
//                           ),
//                           DataCell(
//                             TranslatedText(
//                               row["Duration"].toString(),
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w600,
//                                 fontFamily: "Gilroy Regular",
//                                 color: Color(0xFF00796B),
//                               ),
//                             ),
//                           ),
//                           DataCell(
//                             TranslatedText(
//                               row["Yield"].toString(),
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w600,
//                                 fontFamily: "Gilroy Regular",
//                                 color: Color(0xFF00796B),
//                               ),
//                             ),
//                           ),
//                         ],
//                       );
//                     }).toList(),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:soybean_gyan/services/TranslatedText.dart';

class Predisposing extends StatelessWidget {
  const Predisposing({super.key});

  @override
  Widget build(BuildContext context) {
    BorderSide outer = const BorderSide(width: 2, color: Color(0xFF156B34));
    BorderSide inner = const BorderSide(width: 1, color: Color(0xFF156B34));
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: TranslatedText(
          "Pre-Disposing Factors",
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
                  Colors.green.shade100,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: screenHeight * 0.02),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TranslatedText(
                    "Forecast of major insect infestation in soybean crop according to weather conditions",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Gilroy Regular",
                      color: Color(0xFF00796B),
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
             SizedBox(height: screenHeight * 0.02),
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
               child:
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                  child: Table(
                    border: TableBorder(
                      top: outer,
                      bottom: outer,
                      left: outer,
                      right: outer,
                      horizontalInside: inner,
                      verticalInside: inner,
                    ),
                    columnWidths: const {
                      0: IntrinsicColumnWidth(),
                      1: IntrinsicColumnWidth(),
                      2: IntrinsicColumnWidth(),
                      3: IntrinsicColumnWidth(),
                      4: IntrinsicColumnWidth(),
                    },
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      _buildRow(
                        isHeader: true,
                        cells: [
                          'Name of Insect',
                          'Max Temp',
                          'Min Temp',
                          'Relative Humidity',
                          'Remarks',
                        ],
                      ),
                      _buildRow(
                        cells: [
                          'Whitefly',
                          '27.43 - 31.65 °C',
                          '21.36 - 24.36 °C',
                          '86.20 - 93.23 %',
                          'Less in previous week, then\n higher than medium in current week',
                        ],
                      ),
                      _buildRow(
                        cells: [
                          'Girdle beetle',
                          '27.29 - 31.65 °C',
                          '19.73 - 24.74 °C',
                          '82.96 - 93.75 %',
                          'Higher than medium from two \nweeks prior and one week prior to \ncurrent week',
                        ],
                      ),
                      _buildRow(
                        cells: [
                          'Pod borer of gram',
                          '27.48 - 31.44 °C',
                          '19.73 - 23.91 °C',
                          '86.18 - 93.61 %',
                          'Less than medium from previous\n week and then higher than medium \nin current week',
                        ],
                      ),
                      _buildRow(
                        cells: [
                          'Tobacco caterpillar',
                          '27.06 - 32.45 °C',
                          '20.23 - 25.63 °C',
                          '82.96 - 94.28 %',
                          'Higher than medium from two\n weeks prior and one week prior, \nthen increasing or continuously higher\n from last or second last week to current\n week',
                        ],
                      ),
                    ],
                  ),
                ),
             ),
              ],
            ),
          ),
        ),
    );
  }

  TableRow _buildRow({required List<String> cells, bool isHeader = false}) {
    return TableRow(
      decoration: BoxDecoration(
        color: isHeader ? Colors.green.shade100 : Colors.white,
      ),
      children:
          cells
              .map(
                (text) => Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 35,
                    horizontal: 5,
                  ),
                  child: TranslatedText(
                    text,
                    style: TextStyle(
                      color: isHeader ? Color(0xFF156B34) : Colors.black,
                      fontFamily: "Gilroy Heading",
                      fontSize: isHeader ? 20 : 19,
                      fontWeight:
                          isHeader ? FontWeight.bold : FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
              .toList(),
    );
  }
}
