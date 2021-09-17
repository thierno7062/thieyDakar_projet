import 'package:firebase_admob/firebase_admob.dart';

class Config {

  /// Define your app title here
  static const appTitle = 'THIEY DAKAR';

  /// Define your WordPress API url here
  static final apiEndpoint = 'https://thieydakar.net/wp-json/wp/v2';

  /// Define your default color (light or dark)
  // static final defaultColor = 'dark';
  static final defaultColor = 'light';

  /// Define your default locale
  // static final defaultLocale = 'ar';
  static final defaultLocale = 'en';

  /// Define category IDs which you want to exclude
  // static final excludeCategories = [1, 4, 5];
  static final excludeCategories = [];

  /// Define home page category id if you want only one to be displayed instead of category tabs
  static final homePageCategory = null;

  /// Enable push notifications
  static final pushNotificationsEnabled = true;

  /// AdMob settings
  static final adMobEnabled = true;
  static final adMobShowInterstitialAd = true;
  static final adMobiOSAppID = 'ca-app-pub-7606792083684702~1784829195';
  static final adMobAndroidID = 'ca-app-pub-7606792083684702~7228727565';
  static final adMobAdUnitID = 'ca-app-pub-7606792083684702/2943187569';
  static final adMobPosition = 'bottom';

  /// Facebook Audience Network (Facebook ads) settings.
  /// Android supported: Banner, Native, Native Banner and Interstitial Ads
  /// iOS supported: Banner and Native Ads
  ///
  /// You should not have both adMob and Facebook Ads enabled at the same time.
  /// Although it is possible to show one banner at the top and the other one at the bottom, it is not recommended.
  ///
  /// Type can be 'banner', 'native banner', 'native'
  /// For each type PlacementID has to be defined
  /// Size for banners can be 'small' and 'medium'
  /// Size for native and native banner ad can be 'small', 'medium' and 'large'
  /// Position can be 'bottom' or 'top'
  /// Replace the placementIds with your own from the https://developers.facebook.com/
  static const facebookAdsEnabled = false;
  static const facebookAdType = 'native';
  static const facebookAdSize = 'small';
  static const facebookAdPosition = 'bottom';

  /// After adding Android Banner Placement copy the PlacementID here
  static const facebookAndroidBannerAdPlacementId = '845021802674347_846011962575331';

  /// After adding iOS Banner Placement copy the PlacementID here
  static const facebookIOSBannerAdPlacementId = 'YOUR_PLACEMENT_ID';

  /// After adding Android Native Banner Placement copy the PlacementID here
  static const facebookAndroidNativeBannerAdPlacementId = '845021802674347_847316735778187';

  /// After adding iOS Native Ad Placement copy the PlacementID here
  static const facebookIOSNativeAdPlacementId = 'YOUR_PLACEMENT_ID';

  /// After adding Android Native Ad Placement copy the PlacementID here
  static const facebookAndroidNativeAdPlacementId = '845021802674347_847322475777613';

  static var facebookAdLoaded = true;
  static var facebookAdOverlay;
}
