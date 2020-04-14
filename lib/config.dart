import 'package:firebase_admob/firebase_admob.dart';

class Config {

  ///Define your app title here
  static const appTitle = 'Deco News';

  /// Define your WordPress API url here
  static final apiEndpoint = 'https://deconews.decouikit.com/wp-json/wp/v2';

  /// Define your default color (light or dark)
  // static final defaultColor = 'dark';
  static final defaultColor = 'light';

  ///Define your default locales
  ///for each locale you need a separate json file with provided translations for each string
  ///file needs to be placed in lib/locale/ folder
  ///file needs to be named in the following format: i18n_{language_code}.json
  ///for example: Arabian - i18n_ar.json
  ///follow the instructions closely to ensure proper implementation
  static final localeCodes = ['en', 'ar'];

  ///Define your default locale
  ///Default locale has to be among localeCodes
  ///Default locale is used whenever the current locale on user's phone
  ///is not present supported by the app
  // static final defaultLocale = 'ar';
  static final defaultLocale = 'en';

  ///Force specific locale
  ///Locale has to be among localeCodes
  ///It is used every time when the app is started
  //static final forcedLocale = 'en';
  static const String forcedLocale = '';

  /// Define category IDs which you want to exclude
  // static final excludeCategories = [1, 4, 5];
  static final excludeCategories = [];

  /// Enable push notifications
  static final pushNotificationsEnabled = true;

  /// AdMob settings
  static final adMobEnabled = false;
  static final adMobiOSAppID = 'ca-app-pub-7868270859526221~2024798504';
  static final adMobAndroidID = 'ca-app-pub-7868270859526221~7198068286';
  static final adMobAdUnitID = BannerAd.testAdUnitId;
  static final adMobPosition = 'bottom';
}
