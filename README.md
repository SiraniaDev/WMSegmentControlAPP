# WMSegmentControlAPP
Using WMSegment control =>  100% Programmatically (Xcode 11.3.1, Swift 5)

## CocoaPods:
pod 'WMSegmentControl'
pod 'BetterSegmentedControl', '~> 1.3'


import WMSegmentControl
import BetterSegmentedControl


## bugg
 error: IB Designables: Failed to render and update auto layout status for ViewController (BYZ-38-t0r): Failed to load designables from path (null)

=>80

I solved the problem by doing the following:

Go to File > Workspace settings.
Click the little right arrow beside "Derived data". This opens the Finder app at the location of the DerivedData folder.
Go inside the DerivedData folder, and delete the folder corresponding to your project.
Quit Xcode, and re-open it.
Clean your project shiftcommandk.
build your project commandb.
Open your storyboard.
Go to Editor > Refresh all views.
Updated

Sometimes just directly Go to Editor > Refresh all views worked. If Refresh all views is disabled, quit Xcode and try again.


To do constraints 
