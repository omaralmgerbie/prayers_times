import 'package:prayers_times/src/calculation/prayer_calculation_parameters.dart';
import 'package:prayers_times/src/utils/constant.dart';

/// The `PrayerCalculationMethod` class provides predefined calculation methods for determining Islamic prayer times.
///
/// This class offers a collection of well-known calculation methods used by various organizations and regions
/// to calculate prayer times based on different conventions and rules.
class PrayerCalculationMethod {
  /// Muslim World League calculation method.
  static PrayerCalculationParameters muslimWorldLeague(
      {String? madhab = PrayerMadhab.shafi}) {
    PrayerCalculationParameters params = PrayerCalculationParameters(
        "MuslimWorldLeague", 18, 17,
        madhab: madhab);
    params.methodAdjustments.addAll({'dhuhr': 1});
    return params;
  }

  /// Egyptian General Authority of Survey calculation method.
  static PrayerCalculationParameters egyptian(
      {String? madhab = PrayerMadhab.shafi}) {
    PrayerCalculationParameters params =
        PrayerCalculationParameters("Egyptian", 19.5, 17.5, madhab: madhab);
    params.methodAdjustments.addAll({'dhuhr': 1});
    return params;
  }

  /// University of Islamic Sciences, Karachi calculation method.
  static PrayerCalculationParameters karachi(
      {String? madhab = PrayerMadhab.hanafi}) {
    PrayerCalculationParameters params =
        PrayerCalculationParameters("Karachi", 18, 18, madhab: madhab);
    params.methodAdjustments.addAll({'dhuhr': 1});
    return params;
  }

  /// Umm al-Qura University, Makkah calculation method.
  static PrayerCalculationParameters ummAlQura(
      {String? madhab = PrayerMadhab.hanafi}) {
    return PrayerCalculationParameters("UmmAlQura", 18.5, 0,
        ishaInterval: 90, madhab: madhab);
  }

  /// Dubai calculation method.
  static PrayerCalculationParameters dubai(
      {String? madhab = PrayerMadhab.hanafi}) {
    PrayerCalculationParameters params =
        PrayerCalculationParameters("Dubai", 18.2, 18.2, madhab: madhab);
    params.methodAdjustments
        .addAll({'sunrise': -3, 'dhuhr': 3, 'asr': 3, 'maghrib': 3});
    return params;
  }

  /// Moonsighting Committee calculation method.
  static PrayerCalculationParameters moonsightingCommittee(
      {String? madhab = PrayerMadhab.hanafi}) {
    PrayerCalculationParameters params = PrayerCalculationParameters(
        "MoonsightingCommittee", 18, 18,
        madhab: madhab);
    params.methodAdjustments.addAll({'dhuhr': 5, 'maghrib': 3});
    return params;
  }

  /// ISNA (Islamic Society of North America) calculation method.
  static PrayerCalculationParameters northAmerica(
      {String? madhab = PrayerMadhab.hanafi}) {
    PrayerCalculationParameters params =
        PrayerCalculationParameters("NorthAmerica", 15, 15, madhab: madhab);
    params.methodAdjustments.addAll({'dhuhr': 1});
    return params;
  }

  /// Kuwait calculation method.
  static PrayerCalculationParameters kuwait(
      {String? madhab = PrayerMadhab.hanafi}) {
    return PrayerCalculationParameters("Kuwait", 18, 17.5, madhab: madhab);
  }

  /// Qatar calculation method.
  static PrayerCalculationParameters qatar(
      {String? madhab = PrayerMadhab.hanafi}) {
    return PrayerCalculationParameters("Qatar", 18, 0,
        ishaInterval: 90, madhab: madhab);
  }

  /// Singapore calculation method.
  static PrayerCalculationParameters singapore(
      {String? madhab = PrayerMadhab.hanafi}) {
    PrayerCalculationParameters params =
        PrayerCalculationParameters("Singapore", 20, 18, madhab: madhab);
    params.methodAdjustments.addAll({'dhuhr': 1});
    return params;
  }

  /// Institute of Geophysics, University of Tehran calculation method.
  static PrayerCalculationParameters tehran(
      {String? madhab = PrayerMadhab.hanafi}) {
    PrayerCalculationParameters params = PrayerCalculationParameters(
        "Tehran", 17.7, 14,
        ishaInterval: 0, maghribAngle: 4.5, madhab: madhab);
    return params;
  }

  /// Dianet (Turkey) calculation method.
  static PrayerCalculationParameters turkey(
      {String? madhab = PrayerMadhab.hanafi}) {
    PrayerCalculationParameters params =
        PrayerCalculationParameters("Turkey", 18, 17, madhab: madhab);
    params.methodAdjustments
        .addAll({'sunrise': -7, 'dhuhr': 5, 'asr': 4, 'maghrib': 7});
    return params;
  }

  /// Moroccan Ministry of Habous and Islamic Affairs calculation method.
  static PrayerCalculationParameters morocco(
      {String? madhab = PrayerMadhab.hanafi}) {
    PrayerCalculationParameters params =
        PrayerCalculationParameters("Morocco", 19, 17, madhab: madhab);
    params.methodAdjustments.addAll({'sunrise': -3, 'dhuhr': 5, 'maghrib': 5});
    return params;
  }

  /// Custom or unspecified calculation method.
  static PrayerCalculationParameters other(
      {String? madhab = PrayerMadhab.hanafi}) {
    return PrayerCalculationParameters("Other", 0, 0, madhab: madhab);
  }
}
