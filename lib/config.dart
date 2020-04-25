import 'package:firebase_admob/firebase_admob.dart';

class Config {

  /// Define your app title here
  static const appTitle = 'Deco News';

  /// Define your WordPress API url here
  static final apiEndpoint = 'https://deconews.decouikit.com/wp-json/wp/v2';

  /// Define your default color (light or dark)
  // static final defaultColor = 'dark';
  static final defaultColor = 'light';

  /// Define your default locale
  // static final defaultLocale = 'ar';
  static final defaultLocale = 'en';

  /// Define category IDs which you want to exclude
  // static final excludeCategories = [1, 4, 5];
  static final excludeCategories = [];

  /// Enable push notifications
  static final pushNotificationsEnabled = true;

  /// AdMob settings
  static final adMobEnabled = true;
  static final adMobiOSAppID = 'ca-app-pub-7868270859526221~2024798504';
  static final adMobAndroidID = 'ca-app-pub-7868270859526221~7198068286';
  static final adMobAdUnitID = BannerAd.testAdUnitId;
  static final adMobPosition = 'bottom';

  /// Facebook Audience Network (Facebook ads) settings - currently only for Android.
  /// Type can be 'banner', 'native banner', 'native'
  /// For each type PlacementID has to be defined
  /// Size for banners can be 'small' and 'medium'
  /// Size for native and native banner ad can be 'small', 'medium' and 'large'
  /// Position can be 'bottom' or 'top'
  /// Replace the placementIds with your own from the https://developers.facebook.com/
  static const facebookAdsEnabled = false;
  static const facebookAdType = 'banner';
  static const facebookAdSize = 'large';
  static const facebookAdPosition = 'bottom';
  static const facebookTestingId = '2785d4c0-2212-475d-8169-3153fb5c8cae';
  static const facebookPlacementId = 'YOUR_PLACEMENT_ID';

  /// After adding Banner Placement copy the PlacementID here
  static const facebookBannerAdPlacementId = '845021802674347_846011962575331';

  /// After adding Native Banner Placement copy the PlacementID here
  static const facebookNativeBannerAdPlacementId = '845021802674347_847316735778187';

  /// After adding Native Ad Placement copy the PlacementID here
  static const facebookNativeAdPlacementId = '845021802674347_847322475777613';
  static var facebookAdLoaded = true;
  static var facebookAdOverlay;

  /// You should not have both adMob and Facebook Ads enabled at the same time.
  /// Although it is possible to show one banner at the top and the other one at the bottom, it is not recommended.
}
