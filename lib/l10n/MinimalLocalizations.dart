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

  String get title {
    return _localizedValues[locale.languageCode]['title'];
  }

  String get body {
    return _localizedValues[locale.languageCode]['body'];
  }

  String get appTitle {
    return _localizedValues[locale.languageCode]['appTitle'];
  }

  String get distance {
    return _localizedValues[locale.languageCode]['distance'];
  }

  String get distancePerUnit {
    return _localizedValues[locale.languageCode]['distancePerUnit'];
  }

  String get fuelCost {
    return _localizedValues[locale.languageCode]['fuelCost'];
  }

  String get submit {
    return _localizedValues[locale.languageCode]['submit'];
  }

  String get reset {
    return _localizedValues[locale.languageCode]['reset'];
  }

  String get dollars {
    return _localizedValues[locale.languageCode]['dollars'];
  }

  String get euro {
    return _localizedValues[locale.languageCode]['euro'];
  }

  String get pounds {
    return _localizedValues[locale.languageCode]['pounds'];
  }

  String get yen {
    return _localizedValues[locale.languageCode]['yen'];
  }

  String get theTotalCost {
    return _localizedValues[locale.languageCode]['theTotalCost'];
  }

  String get distanceEG {
    return _localizedValues[locale.languageCode]['distanceEG'];
  }

  String get distancePerUnitEG {
    return _localizedValues[locale.languageCode]['distancePerUnitEG'];
  }

  String get fuelCostEG {
    return _localizedValues[locale.languageCode]['fuelCostEG'];
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
