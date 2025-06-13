import 'package:flutter/material.dart';
import 'google_translate_service.dart';

class LanguageProvider with ChangeNotifier {
  String _selectedLangCode = 'en';
  final GoogleTranslateService _translationService = GoogleTranslateService();

  final Map<String, String> _translationCache = {};

  String get selectedLangCode => _selectedLangCode;

  Future<void> changeLanguage(String newLangCode) async {
    if (_selectedLangCode != newLangCode) {
      _selectedLangCode = newLangCode;
      print("Language changed to: $_selectedLangCode");
      notifyListeners();
    }
  }
  Future<String?> translate(String text, {String sourceLang = "en"}) async {
    // Target language is the currently selected language in the provider
    final String targetLang = _selectedLangCode;

    if (targetLang == sourceLang || text.trim().isEmpty) {
      return text;
    }

    final cacheKey = "$sourceLang:$targetLang:$text";
    if (_translationCache.containsKey(cacheKey)) {
      // print("CACHE HIT for '$text' to '$targetLang': ${_translationCache[cacheKey]}");
      return _translationCache[cacheKey];
    }

    // print("CACHE MISS for '$text' to '$targetLang'. Calling API...");
    final translatedText = await _translationService.translate(text, targetLang, sourceLanguage: sourceLang);

    if (translatedText != null && translatedText != text) {
      _translationCache[cacheKey] = translatedText;
    }
    return translatedText ?? text; // Fallback to original if translation is null
  }
}