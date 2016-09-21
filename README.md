![](https://img.shields.io/badge/build-pass-brightgreen.svg?style=flat-square)
![](https://img.shields.io/badge/platform-WatchOS2-ff69b4.svg?style=flat-square)
![](https://img.shields.io/badge/Require-XCode%208-lightgrey.svg?style=flat-square)


# WatchOS2-NewUI-Movie-Example
WatchOS 2 Experiments - New UI Components - Video

## Example

![](https://raw.githubusercontent.com/Sweefties/WatchOS2-NewUI-Movie-Example/master/Screenshots/WatchOS2ExperimentsNewUIComp-Video.jpg)

## Requirements

- >= XCode 8.0.
- >= Swift 3.

Tested on WatchOS2 Simulator.

## Important

this is the Xcode 8 / Swift 3 updated project.

## Usage

To run the example project, clone the repo.

### Extra Simple!

```swift
let url = NSBundle.mainBundle().URLForResource("file_name", withExtension: "m4v")
let poster = WKImage(imageName: "image_name")

self.movieUIPlayer.setMovieURL(url!)
self.movieUIPlayer.setLoops(false)
self.movieUIPlayer.setPosterImage(poster)
```



