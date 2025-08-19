import 'package:flutter/material.dart';
import 'package:soybean_gyan/services/TranslatedText.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MarketPrice extends StatefulWidget {
  const MarketPrice({super.key});

  @override
  State<MarketPrice> createState() => _MarketPriceState();
}

class _MarketPriceState extends State<MarketPrice>
    with SingleTickerProviderStateMixin {
  List<dynamic> _records = [];
  List<dynamic> _filteredRecords = [];
  String _selectedState = 'Madhya Pradesh'; // Default state
  final TextEditingController _districtController = TextEditingController();

  final List<String> _states = [
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Bihar',
    'Chhattisgarh',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal Pradesh',
    'Jharkhand',
    'Karnataka',
    'Kerala',
    'Madhya Pradesh',
    'Maharashtra',
    'Manipur',
    'Meghalaya',
    'Mizoram',
    'Nagaland',
    'Odisha',
    'Punjab',
    'Rajasthan',
    'Sikkim',
    'Tamil Nadu',
    'Telangana',
    'Tripura',
    'Uttar Pradesh',
    'Uttarakhand',
    'West Bengal',
  ];

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _controller.forward();
    _fetchData(); // Initial fetch with the default state
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _fetchData({String? district}) async {
    final String baseUrl =
        'https://api.data.gov.in/resource/35985678-0d79-46b4-9ed6-6f13308a1d24';
    final String apiKey =
        '579b464db66ec23bdd0000017702727630ab475566b968f2164f5606';

    // Base URL with common parameters
    String url =
        '$baseUrl?api-key=$apiKey&format=json&limit=20&filters%5BState.keyword%5D=${Uri.encodeComponent(_selectedState)}';

    // Add district filter if provided
    if (district != null && district.isNotEmpty) {
      url += '&filters%5BDistrict.keyword%5D=${Uri.encodeComponent(district)}';
    }

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        _records = data['records'];
        _filteredRecords = _records; // Initialize filtered list
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to load data. Please try again.')),
      );
    }
  }

  void _search() {
    String district = _districtController.text.trim();
    if (district.isNotEmpty) {
      // Capitalize the first letter of the district name
      district =
          district[0].toUpperCase() + district.substring(1).toLowerCase();
    }
    _fetchData(district: district);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TranslatedText(
          "Market Price",
          style: const TextStyle(
            color: Color(0xFF156B34),
            fontWeight: FontWeight.w700,
            fontFamily: "Gilroy Heading",
            fontSize: 25,
          ),
        ),
        backgroundColor: Color(0xFFE8F5E9),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.green.shade50,
                  Colors.green.shade100,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    // Larger State Dropdown Field
                    Expanded(
                      flex: 6, // Larger flex for State field
                      child: DropdownButtonFormField<String>(
                        value: _selectedState,
                        onChanged: (value) {
                          setState(() {
                            _selectedState = value!;
                          });
                          _fetchData(); // Fetch data for the newly selected state
                        },
                        decoration: InputDecoration(
                          labelText: 'State',
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        items:
                            _states
                                .map<DropdownMenuItem<String>>(
                                  (state) => DropdownMenuItem<String>(
                                    value: state,
                                    child: Text(
                                      state,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                )
                                .toList(),
                      ),
                    ),
                    SizedBox(width: 10),
                    // Smaller District Field
                    Expanded(
                      flex: 3, // Smaller flex for District field
                      child: TextField(
                        controller: _districtController,
                        decoration: InputDecoration(
                          labelText: 'District',
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    // Search Button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.green,
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                      ),
                      onPressed: _search,
                      child: Text('Search'),
                    ),
                  ],
                ),
              ),
              Expanded(
                child:
                    _filteredRecords.isEmpty
                        ? Center(child: CircularProgressIndicator())
                        : ListView.builder(
                          itemCount: _filteredRecords.length,
                          itemBuilder: (context, index) {
                            final record = _filteredRecords[index];
                            return FadeTransition(
                              opacity: _controller,
                              child: Card(
                                color: Colors.white.withOpacity(0.8),
                                margin: EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                  vertical: 5.0,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: ListTile(
                                  title: Text(
                                    '${record['Commodity']} - ${record['Variety']}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green[900],
                                    ),
                                  ),
                                  subtitle: Text(
                                    'State: ${record['State']}\n'
                                    'District: ${record['District']}\n'
                                    'Market: ${record['Market']}\n'
                                    'Arrival Date: ${record['Arrival_Date']}\n'
                                    'Min Price: ₹${record['Min_Price']}\n'
                                    'Max Price: ₹${record['Max_Price']}\n'
                                    'Modal Price: ₹${record['Modal_Price']}',
                                    style: TextStyle(color: Colors.black87),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
