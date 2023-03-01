import 'package:flutter/material.dart';
import 'package:app_upgrade_flutter_sdk/app_upgrade_flutter_sdk.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppInfo appInfo = AppInfo(
      appName: 'Wallpaper app', // Your app name
      appVersion: '1.0.0', // Your app version
      platform: 'android', // App Platform, android or ios
      environment:
          'production', // Environment in which app is running, production, staging or development etc.
      appLanguage: 'es', 
      // preferredAndroidMarket: PreferredAndroidMarket.huawei, // or PrefferedAndroidMarket.huawei or PrefferedAndroidMarket.other If not provided default android marketplace is Google playstore. Optional
      // otherAndroidMarketUrl: 'https://otherandroidmarketplaceurl.com/app/id', // Required only if PreferredAndroidMarket is other.   
    );

    return MaterialApp(
      title: 'App Upgrade Flutter Demo App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('App Upgrade Flutter Demo App'),
          ),
          body: AppUpgradeAlert(
            xApiKey:
                'ZWY0ZDhjYjgtYThmMC00NTg5LWI0NmUtMjM5OWZkNjkzMzQ5', // Your x-api-key
            appInfo: appInfo,
            child: Center(child: Text('Hello World!')),
          )),
    );
  }
}
