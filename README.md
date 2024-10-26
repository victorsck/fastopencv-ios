# OpenCV for iOS

OpenCV 4.9.0 framework for iOS (arm64 + Simulator arm64 + Simulator x86_64). Added for use by [react-native-fast-opencv](https://github.com/lukaszkurantdev/react-native-fast-opencv) library.

### Installation with Cocoapods 

Just add line in your Podfile: 

```
pod 'FastOpenCV-iOS'
```

### Compilation

This `xcframework` has been compiled using following command:

```
python3 opencv-4.9.0/platforms/apple/build_xcframework.py \       
  --out ./opencv-build \
  --iphoneos_archs=arm64 \
  --iphonesimulator_archs=arm64,x86_64 \
  --iphoneos_deployment_target=13 \
  --disable-bitcode \
  --build_only_specified_archs \
  --without calib3d \                          
  --without dnn \         
  --without flann \                           
  --without gapi \        
  --without highgui \                          
  --without java \        
  --without js \                              
  --without ml \
  --without objc \                            
  --without objdetect \   
  --without python \                          
  --without stitching \   
  --without ts \                              
  --without video \
  --without world \                           
  --without dpm           --without face          --without fuzzy 				--without hdf           --without line_descriptor   \
	--without matlab        --without plot          --without reg           --without rgbd          --without saliency          \
	--without sfm           --without stereo        --without text          --without xphoto        --without surface_matching  \
	--without photo         --without stitching     --without cudaarithm    --without cudabgsegm    --without cudacodec         \
	--without viz           --without cudastereo    --without dnn           --without datasets      --without cudafeatures2d    \
	--without cudafilters   --without cudaimgproc   --without cudalegacy    --without cudaobjdetect --without cudaoptflow       \
	--without cudawarping   --without cudev         --without shape         --without superres      --without videostab         \
	--without ccalib        --without structured_light \
	--without tracking      --without aruco         --without bgsegm        --without cvv
```

### Instalation Manually 

Download and add `opencv2.xcframework` to your project

Also add following frameworks to your project:

- Accelerate
- AssetsLibrary
- AVFoundation
- CoreGraphics
- CoreImage
- CoreMedia
- CoreVideo
- QuartzCore
- UIKit
- Foundation

Also add following libs :

- libc++.dylib


## OpenCV README
OpenCV: open source computer vision library
Homepage:		http://opencv.org




