import 'package:firebase_admob/firebase_admob.dart';

class Config {

  ///Define your app title here
  static const appTitle = 'Deco News';

  /// Define your WordPress API url here
  static final apiEndpoint = 'https://deconews.decouikit.com/wp-json/wp/v2';

  /// Define your default color (light or dark)
  // static final defaultColor = 'dark';
  static final defaultColor = 'light';

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
