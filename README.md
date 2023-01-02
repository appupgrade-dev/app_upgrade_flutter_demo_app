# App Upgrade: Flutter Demo App

[App Upgrade: Flutter Demo App](https://github.com/appupgrade-dev/app_upgrade_flutter_demo_app) is a sample flutter app integrated with [App Upgrade Flutter SDK](https://pub.dev/packages/app_upgrade_flutter_sdk) to demonstrate how Force upgrade works in flutter app with [App Upgrade](https://appupgrade.dev).

You can find the flutter demo app integrated via API in [integration-via-api](https://github.com/appupgrade-dev/app_upgrade_flutter_demo_app/tree/integrate-via-api) branch.

## Installation

To get started, clone the repo:

`$ git clone https://github.com/appupgrade-dev/app_upgrade_flutter_demo_app`

## Setup

1. Once cloned, navigate to the `app_upgrade_flutter_demo_app` directory.

   `$ cd app_upgrade_flutter_demo_app`

2. Open the directory in your code editor.

3. Open the `app_upgrade_flutter_demo_app/lib/main.dart` file, and replace required values in line 14-32
   | Key                   | Value Description |
   | -----------------------|-------------|
   | `xApiKey`     | Your API Key. Required. |
   | `appName`  | Your app name. Required. |
   | `appVersion`  | Your app version. Required. |
   | `platform`  | Your app platform, ex: android or iOS. Required. |
   | `environment`  | Your app enviroment, ex: dev, stating, production. Required. |

   Example:

   ```js
    AppInfo appInfo = AppInfo(
      appName: 'Wallpaper app', // Your app name
      appVersion: '1.0.0', // Your app version
      platform: 'android', // App Platform, android or ios
      environment:
          'production', // Environment in which app is running, production, staging or development etc.
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
   ```

4. Save `main.dart` file.

## Run the app:
   Start the app
   `$ flutter run --no-sound-null-safety`

## Usage:   

1. Head to [App Upgrade](https://appupgrade.dev) and signup if not already.
2. Create a new Project.
3. Grab the API Key. You will need to provide the same in the required fields mentioned in above section.
4. Create a new version with the required details and force upgrade field as selected. Make sure the details provided in version matches with the details provided in the App.js file.
5. Refresh the app and you will be able to see a popup for force upgrade.
6. Edit the version in dashboard with Force upgrade field unselected. Refresh the app and you will see a popup with soft upgrade with a button to upgrade later.
 > For full details on how to use App Upgrade dashboard read our [Documentation](https://appupgrade.dev/docs)

## Screenshots
 ![forceupgrade_flutter_sdk](https://raw.githubusercontent.com/appupgrade-dev/app-upgrade-assets/main/images/forceupgrade_flutter_sdk.png)

## Need help?

If you're looking for help, try our [Documentation](https://appupgrade.dev/docs/) or our [FAQ](https://appupgrade.dev/docs/app-upgrade-faq).
If you need support please write to us at appupgrade.dev@gmail.com
