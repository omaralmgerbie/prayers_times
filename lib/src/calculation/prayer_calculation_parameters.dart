import 'package:prayers_times/src/utils/constant.dart';

/// The `PrayerCalculationParameters` class represents parameters used for calculating Islamic prayer times.
///
/// This class provides a convenient way to store various parameters and adjustments
/// required for calculating prayer times based on different methods and rules.
class PrayerCalculationParameters {
  /// The calculation method name.
  final String method;

  /// The angle for Fajr (pre-dawn) prayer in degrees.
  final double fajrAngle;

  /// The angle for Isha (nightfall) prayer in degrees.
  final double ishaAngle;

  /// The interval between sunset and Isha prayer in minutes.
  final double ishaInterval;

  /// The angle for Maghrib (sunset) prayer in degrees.
  final double maghribAngle;

  /// The chosen madhab (school of thought) for the prayer time calculation.
  final String madhab;

  /// The rule for calculating high latitude prayer times.
  final String highLatitudeRule;

  /// Adjustments for various prayer times.
  final Map<String, double> adjustments;

  /// Method-specific adjustments for various prayer times.
  final Map<String, double> methodAdjustments;

  /// Creates a new `PrayerCalculationParameters` object with the specified parameters.
  ///
  /// - Parameters:
  ///   - methodName: The calculation method name.
  ///   - fajrAngle: The angle for Fajr (pre-dawn) prayer in degrees.
  ///   - ishaAngle: The angle for Isha (nightfall) prayer in degrees.
  ///   - ishaInterval: The interval between sunset and Isha prayer in minutes (optional).
  ///   - maghribAngle: The angle for Maghrib (sunset) prayer in degrees (optional).
  PrayerCalculationParameters(
    String methodName,
    this.fajrAngle,
    this.ishaAngle, {
    String? madhab,
    highLatitudeRule = HighLatitudeRule.middleOfTheNight,
    double? ishaInterval,
    double? maghribAngle,
    Map<String, double>? adjustments,
    Map<String, double>? methodAdjustments,
  })  : maghribAngle = maghribAngle ?? 0.0,
        method = methodName,
        ishaInterval = ishaInterval ?? 0.0,
        highLatitudeRule = HighLatitudeRule.middleOfTheNight,
        madhab = PrayerMadhab.hanafi,
        adjustments = adjustments ?? _defaultAdjustments,
        methodAdjustments = methodAdjustments ?? _defaultAdjustments;

  /// Determines the portions of the night for Fajr and Isha prayers based on the chosen high latitude rule.
  ///
  /// Returns a map containing the portions of the night allocated for Fajr and Isha prayers.
  Map<String, double> nightPortions() {
    switch (highLatitudeRule) {
      case HighLatitudeRule.middleOfTheNight:
        return {'fajr': 1 / 2, 'isha': 1 / 2};
      case HighLatitudeRule.seventhOfTheNight:
        return {'fajr': 1 / 7, 'isha': 1 / 7};
      case HighLatitudeRule.twilightAngle:
        return {'fajr': fajrAngle / 60, 'isha': ishaAngle / 60};
      default:
        throw ('Invalid high latitude rule found when attempting to compute night portions: $highLatitudeRule');
    }
  }
}

const Map<String, double> _defaultAdjustments = {
  'fajr': 0,
  'sunrise': 0,
  'dhuhr': 0,
  'asr': 0,
  'maghrib': 0,
  'isha': 0
};
