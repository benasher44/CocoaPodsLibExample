# CocoaPodsLibExample
Sample project that shows how to use CocoaPods in a project with an app target and a library target

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
