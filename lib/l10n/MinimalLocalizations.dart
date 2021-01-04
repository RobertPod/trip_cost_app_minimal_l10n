import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'LocalizedValues.dart';

class MinimalLocalizations {
  MinimalLocalizations(this.locale);

  final Locale locale;
  static Map<String, Map<String, String>> _localizedValues =
      LocalizedValues.localizedValues;

  static MinimalLocalizations of(BuildContext context) {
    return Localizations.of<MinimalLocalizations>(
        context, MinimalLocalizations);
  }

  String find(String key) => _localizedValues[locale.languageCode][key] ?? '';

  String get appTitle {
    return _localizedValues[locale.languageCode]['appTitle'];
  }
}

class MinimalLocalizationsDelegate
    extends LocalizationsDelegate<MinimalLocalizations> {
  const MinimalLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      ['en', 'es', 'pl'].contains(locale.languageCode);

  @override
  Future<MinimalLocalizations> load(Locale locale) {
    // Returning a SynchronousFuture here because an async "load" operation
    // isn't needed to produce an instance of DemoLocalizations.
    return SynchronousFuture<MinimalLocalizations>(
        MinimalLocalizations(locale));
  }

  @override
  bool shouldReload(MinimalLocalizationsDelegate old) => false;
}
