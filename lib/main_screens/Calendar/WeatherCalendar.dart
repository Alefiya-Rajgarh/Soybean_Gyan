import 'package:flutter/material.dart';
import 'package:soybean_gyan/services/TranslatedText.dart';
import 'package:table_calendar/table_calendar.dart';
import 'weather_model.dart';
import 'weather_services.dart';
import 'package:intl/intl.dart';

class WeatherCalendarScreen extends StatefulWidget {
  WeatherCalendarScreen({super.key});
  @override
  State<WeatherCalendarScreen> createState() => _WeatherCalendarScreenState();
}

class _WeatherCalendarScreenState extends State<WeatherCalendarScreen> {
  final List<String> cities = ['Indore',"Mumbai", 'Devas', 'Ujjain', 'Jhabua', 'Ratlam', "Mandsaur", 'Baran', 'Kota', 'jugg' ];
  final WeatherService _weatherService = WeatherService();
  Weather? _weather;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  String _selectedCity = 'Indore';

  @override
  void initState() {
    super.initState();
    _loadWeather();
  }

  Future<void> _loadWeather() async {
    try {
      Weather weather = await _weatherService.fetchWeather(_selectedCity);
      setState(() {
        _weather = weather;
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  String getSoybeanTipForMonth(int month) {
    switch (month) {
      case 6:
        return "🌱 Ideal time to start sowing soybean.";
      case 7:
        return "🌾 Weed control & thinning stage.";
      case 8:
        return "🐛 Monitor pests. Apply neem-based sprays.";
      case 9:
        return "💧 Irrigate carefully during pod filling.";
      case 10:
        return "🔪 Prepare for harvest.";
      default:
        return "📆 Off-season. Prep soil or plan next season.";
    }
  }

  List<String> _getEventsForDay(DateTime day) {
    final formatted = DateFormat('MM-dd').format(day);
    if (formatted == '06-25') return ['🌱 Sowing Reminder'];
    if (formatted == '08-10') return ['🐛 Pest Check'];
    if (formatted == '10-15') return ['🌾 Harvest Time'];
    return [];
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: DropdownButtonFormField<String>(
                value: _selectedCity,
                decoration: InputDecoration(
                  labelText: 'Select City',
                  filled: true,
                  fillColor: Colors.green.shade50,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                items: cities.map((String city) {
                  return DropdownMenuItem<String>(
                    value: city,
                    child: Text(city),
                  );
                }).toList(),
                onChanged: (value) {
                  if (value != null) {
                    setState(() {
                      _selectedCity = value;
                      _weather = null;
                    });
                    _loadWeather();
                  }
                },
              ),
            ),
            if (_weather != null)
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                width: screenWidth*0.9,
                decoration: BoxDecoration(
                  color: Color(0xFFC8E6C9),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(color: Colors.green.shade100, blurRadius: 10),
                  ],
                ),
                child: _weather != null ?
                Column(
                  children: [
                    TranslatedText(
                      _weather!.cityName,
                  style: const TextStyle(
                    color:  Color(0xFF156B34),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Gilroy Heading",
                    fontSize: 35,
                      ),
                    ),
                    Image.network(
                      'https://openweathermap.org/img/wn/${_weather!.icon}@2x.png',
                      width: 100,
                    ),
                    Text(
                      "${_weather!.temperature}°C - ${_weather!.description}",
                      style: const TextStyle(fontSize: 20, fontFamily: "Gilroy Heading",color: Color(0xFF156B34) ),
                    ),
                  ],
                )
                    : Column(
                  children: const [
                  Icon(Icons.error_outline, color: Colors.red, size: 40),
                  SizedBox(height: 10),
                  TranslatedText(
                    "No weather data available.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                  TranslatedText(
                    "Check city name or internet connection.",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TableCalendar(
                firstDay: DateTime.utc(2020, 1, 1),
                lastDay: DateTime.utc(2030, 12, 31),
                focusedDay: _focusedDay,
                calendarFormat: CalendarFormat.month, //
                availableCalendarFormats: const {
                CalendarFormat.month: 'Month',
                },
                headerStyle: HeaderStyle(
                  formatButtonVisible: false, //
                  titleCentered: true,        //
                  titleTextStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Gilroy Heading",
                    color: Color(0xFF156B34),
                  ),
                ),
                selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                },
                eventLoader: _getEventsForDay,
                calendarStyle: CalendarStyle(
                  todayDecoration: BoxDecoration(
                    color: Colors.green.shade200,
                    shape: BoxShape.circle,
                  ),
                  selectedDecoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TranslatedText(
                getSoybeanTipForMonth(_focusedDay.month),
                style: const TextStyle( color:  Color(0xFF156B34),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Gilroy Heading",
                  fontSize: 20,),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
