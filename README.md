
[![CocoaPods](https://img.shields.io/badge/platforms-iOS-green.svg?maxAge=2592000)](https://github.com/pozzito-dev/pozzito-ios)
[![Languages](https://img.shields.io/badge/languages-ObjC%20%20Swift-green.svg?maxAge=2592000)](https://github.com/pozzito-dev/pozzito-ios)

## Installation

This is a framework created as an addition to our Pozzito framework, used to add our default UI to core Pozzito functionalities.

### CocoaPods
Add the Pozzito pod into your Podfile and run `pod install`.

    target :YourTargetName do
      pod 'PozzitoUI'
    end

### Manual Installation

1. Download PozzitoUI.
2. Go to your Xcode project's "General" settings. Drag `PozzitoUI.framework` to the "Embedded Binaries" section. Make sure "Copy items if needed" is selected and click Finish.
3. Create a new "Run Script Phase" in your app’s target’s "Build Phases" and paste the following snippet in the script text field:

        bash "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/Pozzito.framework/strip-frameworks.sh"
This step is required to work around an [App Store submission bug](http://www.openradar.me/radar?id=6409498411401216) when archiving universal binaries.

##Setup and Configuration

### SupportUI

To use PozzitoUI you have to install [Pozzito](https://github.com/pozzito-dev/pozzitoapi-ios) because PozzitoUI uses Pozzito to communicate with our API.

When you have installed Pozzito, you need to import it in the file you want to use it, and instantiate PozzitoManager with apiKey and appId.

After that you can instantiate SupportUI in controller from which you wish to display support screens with that controller as a parameter. 

```swift
PozzitoManager(apiKey: "", appId: "", completion: { (err) in
    if err == nil {
        SupportUI(initialViewController: self)
    }
})
```

After instantiating SupportUI you will be shown Pozzito login screen or a controller from which you can contact agents depending on your configuration.

######Available methods:

```swift
/// Starts support sequence
/// If userParameters exist and username is not required in your config user is created with those parameters
/// If there are no parameters an anonymous user is created
/// If your config requires username, login screen will be shown, with option to enter data or use userParameters to login
/// After user creation/login contact agent screen is shown
/// 
///
/// - Parameters
///   - initialViewController - controller from which support ui is displayed(pushed)
///   - 
///   - userParameters: Optional dictionary with user parameters,
///                             current options - userName (email), firstName, lastName
@discardableResult public init(initialViewController: UIViewController? = nil,
                                window: UIWindow? = nil,
                                userParameters: RequestDictionary? = nil)
```


* If you have any other questions please contact us via email support@pozzito.com.



