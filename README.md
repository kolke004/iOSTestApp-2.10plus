# iOSTestApp-2.10plusl

iOS test app that supports Pendo's 2.10+ specific API methods

//////////////// //// README //// ////////////////

PLEASE READ THOROUGHLY PRIOR TO APP LAUNCH

Reach out to Joe Kolker via Slack for access if needed

//////////////////////////// //// SETUP INSTRUCTIONS //// ////////////////////////////

NOTE - Ensure you do any and all work in `iOSTestApp.xcworkspace` filepath

!!Set your URL Scheme in Xcode project!!

Under Info > URL Types, you should have an entry titled "pendo" - if not, create a new URL by clicking the '+' button. To set your URL scheme, navigate to app.pendo.io then to Subscription Settings > Mobile App Name > Install Settings. Set Identifier to any name of your choosing (eg. pendo). Grab the URL Scheme ID from your app.pendo.io subscription settings. Flow is Subcription Settings > {Name of your iOS App} App Details > Install Settings > Scroll to Step 3 Subsection 1. Look for something formatted like so: pendo-xxxxxxxx. Copy this as it is your scheme-id. Go back to XCode. In the info.plist file, look for where it says 'URL Schemes > Item 0' Paste the full URL Scheme ID here as the key/value pair.

!!Insert your Pendo API Key!!

Under iOSTestApp > AppDelegate.swift, look for the PENDO API KEY comment. Grab the API key from your app.pendo.io subscription settings. Subscription Settings > {Name of your iOS App} App Details > Install Settings. Scroll to Step 2 Section 1. Look for something formatted like so: let appKey = ("HUGE GIANT STRING"). This is your API Key. Copy the API Key in its entirety. Go back to XCode's AppDelegate.swift file and paste the full API Key where it says "{API KEY GOES HERE}" (within the double quotes).


//////////////////////////// //// POD SETUP //// ////////////////////////////

NOTE - Pendo/Firebase pods come preinstalled on this app, skip to STEP 2 listed below to run commands to validate pods are correctly installed

//Step 1//
Open your Podfile by running the following command in terminal (note - for least confusion, ensure Xcode is closed):

$ open -a Xcode Podfile

You will then insert the following into your Podfile:

platform:ios, '9.0'
use_frameworks!

# other pod statements

pod 'Pendo', '~> 2.9.0'

Save the Podfile

//Step 2//
INSTALLING YOUR POD(s)
Install the Pendo SDK pod (along with any other SDKs that you may want to integrate) by running the following command:

$ pod install

//Step 3//
UPDATING YOUR POD
If you wish to update and/or deprecate your Pendo SDK, you will want to run the following commands in terminal:

{filepath to app}
$ open -a Xcode Podfile

Make changes within your podfile to the Pendo pod. For example, if we wanted to deprecate to an older 2.1.1 SDK version for bug testing purposes, would simply change the version:

/// Original Version ///
pod 'Pendo', '~> 2.9.0'

/// Deprecated Version ///
pod 'Pendo', '~> 2.1.1'

Once you save the file, go back to terminal and you can run either of the commands to update the podfile:

$ pod update
$ pod install
