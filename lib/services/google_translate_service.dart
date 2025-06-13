import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart'; // For kDebugMode

class GoogleTranslateService {
  final String _apiKey = 'AIzaSyCfT5ch_AODuBaDP_m9HUmLbS6k0QF0fKE';

  final String _baseUrl = 'https://translation.googleapis.com/language/translate/v2';

  Future<String?> translate(String text, String targetLanguage,
      {String sourceLanguage = "en"}) async {
    if (_apiKey == "YOUR_GOOGLE_CLOUD_TRANSLATION_API_KEY") {
      if (kDebugMode) {
        print('GoogleTranslateService: ERROR - API Key not set. Please replace "YOUR_GOOGLE_CLOUD_TRANSLATION_API_KEY" with your actual key.');
      }
      return text; // Or throw an error
    }

    if (targetLanguage == sourceLanguage) {
      if (kDebugMode) {
        print('GoogleTranslateService: Source and target languages are the same ($sourceLanguage). No translation needed for: "$text"');
      }
      return text;
    }
    if (text.trim().isEmpty) {
      if (kDebugMode) {
        print('GoogleTranslateService: Empty text provided. Returning empty.');
      }
      return text;
    }

    if (kDebugMode) {
      print('GoogleTranslateService: Translating from $sourceLanguage to $targetLanguage: "$text" using Google Cloud Translation API');
    }

    final Map<String, String> queryParameters = {
      'key': _apiKey,
      'q': text,
      'source': sourceLanguage,
      'target': targetLanguage,
      'format': 'text', //  'text' or 'html'
    };

    // For Google Cloud Translation API v2, parameters are typically sent as query parameters in a GET request,
    // or as form-data in a POST request. For simplicity and since 'q' can be long, POST with x-www-form-urlencoded is also common.
    // However, the most straightforward for this API version with an API key is often a POST request with the body as form parameters,
    // or simply adding them to the URL for a GET (though GET has URL length limits).
    // Let's use POST with form-encoded body which is robust.

    // Alternative 1: POST with x-www-form-urlencoded body (More robust for longer text)
    // Uri uri = Uri.parse(_baseUrl);

    // Alternative 2: GET request (Simpler, but text length limit for 'q' due to URL length)
    Uri uri = Uri.parse('$_baseUrl?key=$_apiKey&q=${Uri.encodeComponent(text)}&source=$sourceLanguage&target=$targetLanguage&format=text');


    try {
      // Using GET as per Google's simple examples, ensure 'text' is URL encoded.
      // If 'text' can be very long, POST with form data is better.
      final response = await http.get( // Changed to GET for this example
        uri,
        // headers: { // Not typically needed for GET with API key for this specific API version
        //   // 'Content-Type': 'application/x-www-form-urlencoded', // If using POST with form data
        // },
        // body: queryParameters, // If using POST with form data
      ).timeout(const Duration(seconds: 20)); // Increased timeout slightly

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        // Google API v2 response structure:
        // { "data": { "translations": [ { "translatedText": "..." } ] } }
        if (data['data'] != null &&
            data['data']['translations'] != null &&
            data['data']['translations'].isNotEmpty &&
            data['data']['translations'][0]['translatedText'] != null) {
          final translatedText = data['data']['translations'][0]['translatedText'];
          if (kDebugMode) {
            print('GoogleTranslateService: Translation successful: "$translatedText"');
          }
          return translatedText;
        } else {
          if (kDebugMode) {
            print('GoogleTranslateService: Translation successful but response format unexpected. Body: ${response.body}');
          }
          return text; // Fallback
        }
      } else {
        if (kDebugMode) {
          print('GoogleTranslateService: Translation failed with status code ${response.statusCode}. Response body: ${response.body}');
          // You might want to parse the error message from Google here if available
          // e.g. final errorData = jsonDecode(response.body); print(errorData['error']['message']);
        }
        return text; // Fallback
      }
    } on http.ClientException catch (e) {
      if (kDebugMode) {
        print('GoogleTranslateService: ClientException during translation: $e');
      }
      return text;
    } on FormatException catch (e) {
      if (kDebugMode) {
        print('GoogleTranslateService: FormatException during translation (invalid JSON response): $e');
        print('GoogleTranslateService: Response body was: ${"response variable not available in this scope, check logs"}');
      }
      return text;
    } catch (e) {
      if (kDebugMode) {
        print('GoogleTranslateService: Unknown error during translation: $e');
      }
      return text;
    }
  }

}