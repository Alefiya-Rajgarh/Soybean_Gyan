import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soybean_gyan/services/LanguageProvider.dart'; // Adjust path

class TranslatedText extends StatelessWidget {
  final String originalText;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final bool? softWrap;
  // final int? maxLines;
  // final TextOverflow? overflow;

  const TranslatedText(
      this.originalText, {
        Key? key,
        this.style,
        this.textAlign,
        this.overflow,
        this.softWrap,
        // this.maxLines,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final languageProvider = Provider.of<LanguageProvider>(context);

    // If the target language is English, no need to translate
    if (languageProvider.selectedLangCode == 'en') {
      return Text(
        originalText,
        style: style,
        textAlign: textAlign,
        softWrap: softWrap,
        overflow: overflow,
        // maxLines: maxLines,
      );
    }
    // Otherwise, use FutureBuilder for translation
    return FutureBuilder<String?>(
    future: languageProvider.translate(originalText), // Uses provider's current lang
    initialData: originalText, // Show original English text initially
    builder: (context, snapshot) {
    return Text(
    snapshot.data ?? originalText,
    style: style,
    textAlign: textAlign,
    // maxLines: maxLines,
    // overflow: overflow,
    );
    },
    );
  }
}