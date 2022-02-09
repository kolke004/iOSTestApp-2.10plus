////////////////
//// README ////
////////////////

PLEASE READ THOROUGHLY PRIOR TO APP LAUNCH

/////////////////////////
//// FIREBASE ACCESS ////
/////////////////////////

Reach out to Joe Kolker via Slack for access if needed

////////////////////////////
//// SETUP INSTRUCTIONS ////
////////////////////////////

Note - Ensure you do any and all work in `iOSTestApp.xcworkspace` filepath

Set your URL Scheme in Xcode project
Under Info > URL Types, you should have an entry titled "pendo" - if not, create a new URL by clicking the `+` button
Set URL Scheme 
	Note, your URL scheme can be found under `subscription settings` > `mobile app name` > `install settings` path on app.pendo.io
Set Identifier to any name of your choosing (eg. pendo)

In iOSTestApp > AppDelegate.swift, uncomment anything that is denoted with a `!WARNING!` tag
	Place API key within this file, look for {INSERT KEY HERE} tag (API key found in `subscription settings` > `mobile app name` > `app details` path on app.pendo.io). For example, if your api key is really-long-key, you'd replace
	{INSERT KEY HERE}
	with
	"really-long-key"

Under SecondViewController.swift, uncomment anything that is denoted with a `!WARNING!` tag

Under ThirdViewController.swift, uncomment anything that is denoted with a `!WARNING!` tag


///////////////////
//// POD SETUP ////
///////////////////

NOTE - Pendo/Firebase pods come preinstalled on this app, skip to STEP 2 listed below to run commands to validate pods are correctly installed

//// STEP 1 ////
Open your Podfile by running the following command in terminal (note - for least confusion, ensure Xcode is closed):

$ open -a Xcode Podfile

You will then insert the following into your Podfile:

platform:ios, '9.0'
use_frameworks!

# other pod statements

pod 'Pendo', '~> 2.9.0'

Save the Podfile

//// STEP 2 ////
INSTALLING YOUR POD(s)
Install the Pendo SDK pod (along with any other SDKs that you may want to integrate) by running the following command:

$ pod install

//// STEP 3 ////
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
