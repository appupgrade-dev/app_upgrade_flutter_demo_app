# demo_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
# App Upgrade: Flutter Demo App

[App Upgrade: Flutter Demo App](https://github.com/appupgrade-dev/app_upgrade_flutter_demo_app) is a sample flutter app integrated with [App Upgrade](https://appupgrade.dev) via API to demonstrate how Force upgrade works in flutter app with [App Upgrade](https://appupgrade.dev) API.

You can find the demo app integrated via SDK in [main](https://github.com/appupgrade-dev/app-upgrade-assets) branch.

## Installation

To get started, clone the repo:

`$ git clone https://github.com/appupgrade-dev/app_upgrade_flutter_demo_app`

## Setup

1. Once cloned, navigate to the `app_upgrade_flutter_demo_app` directory.

   `$ cd app_upgrade_flutter_demo_app`

2. Open the directory in your code editor.

3. Open the `app_upgrade_flutter_demo_app/lib/main.dart` file, and replace required values in line 81-86
   | Key                   | Value Description |
   | -----------------------|-------------|
   | `x-api-key`     | Your API Key. Required. |
   | `appName`  | Your app name. Required. |
   | `appVersion`  | Your app version. Required. |
   | `platform`  | Your app platform, ex: android or iOS. Required. |
   | `environment`  | Your app enviroment, ex: dev, stating, production. Required. |

   Example:

   ```js
      Uri.parse(
          'https://appupgrade.dev/api/v1/versions/check?app_name=Wallpaper app&app_version=1.0.0&platform=android&environment=production'),
      headers: {
        "Content-Type": "application/json; charset=utf-8",
        "x-api-key": "ZWY0ZDhjYjgtYThmMC00NTg5LWI0NmUtMjM5OWZkNjkzMzQ5"
      },
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
