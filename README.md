# CocoaPodsLibExample
Sample project that shows how to use CocoaPods in a project with an app target and a library target. All the project does is the app target calls into a method in the framework target that logs "Test" to the console on app launch.

## Overview

There's a framework folder that shows a dynamic framework sample project, and there's a staticlib folder (coming soon) that has a static library example project. In general, the layout is as follows:

- `SampleApp.xcodeproj` with the app target.
- `SampleApp.xcodeproj` contains a library target as a sub-project.
- In `SampleApp.xcodeproj`, the app target has the child library target as a target dependency in the "Target Dependencies" build phase.

That last part is important for 2 reasons:

1. It communicates build order to Xcode: library target must be built for app target to build.
2. It communicates the app target's dependency on the library target to CocoaPods, so that it can understand which targets need access to which pods.

## Follow Up

I plan to add a static library example in the near future.

## Env Used for this Project

### Stack

```
   CocoaPods : 1.2.0.beta.1
        Ruby : ruby 2.0.0p648 (2015-12-16 revision 53162) [universal.x86_64-darwin16]
    RubyGems : 2.6.7
        Host : Mac OS X 10.12.1 (16B2555)
       Xcode : 8.1 (8B62)
         Git : git version 2.10.0
Ruby lib dir : /System/Library/Frameworks/Ruby.framework/Versions/2.0/usr/lib
Repositories : master - https://github.com/CocoaPods/Specs.git @ 78d4970d3c105876f22675b1c1fed97aad3cdf7c
```

### Plugins

```
cocoapods-deintegrate : 1.0.1
cocoapods-plugins     : 1.0.0
cocoapods-search      : 1.0.0
cocoapods-stats       : 1.0.0
cocoapods-trunk       : 1.1.1
cocoapods-try         : 1.1.0
```

