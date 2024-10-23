Pod::Spec.new do |s|
  s.name         = "FastOpenCV-iOS"
  s.version      = "0.1.0"
  s.summary      = "OpenCV (Computer Vision) for iOS."
  s.homepage     = "https://github.com/lukaszkurantdev/fastopencv-ios"
  s.description  = <<-DESC
    OpenCV: open source computer vision library

    Homepage:    http://opencv.org
    Online docs: http://docs.opencv.org
    Q&A forum:   http://answers.opencv.org
    Dev zone:    http://code.opencv.org

    Just compiled iOS framework version #{s.version}
    Also available for downloading here - http://sourceforge.net/projects/opencvlibrary/files/opencv-ios/
    .
              DESC
                  
  s.license      = { :type => 'BSD', :file => 'LICENSE',
    :text => <<-LICENSE
    IMPORTANT: READ BEFORE DOWNLOADING, COPYING, INSTALLING OR USING.

    By downloading, copying, installing or using the software you agree to this license.
    If you do not agree to this license, do not download, install,
    copy or use the software.


    License Agreement
    For Open Source Computer Vision Library

    Copyright (C) 2000-2008, Intel Corporation, all rights reserved.
    Copyright (C) 2009-2011, Willow Garage Inc., all rights reserved.
    Third party copyrights are property of their respective owners.

    Redistribution and use in source and binary forms, with or without modification,
    are permitted provided that the following conditions are met:

    * Redistribution's of source code must retain the above copyright notice,
    this list of conditions and the following disclaimer.

    * Redistribution's in binary form must reproduce the above copyright notice,
    this list of conditions and the following disclaimer in the documentation
    and/or other materials provided with the distribution.

    * The name of the copyright holders may not be used to endorse or promote products
    derived from this software without specific prior written permission.

    This software is provided by the copyright holders and contributors "as is" and
    any express or implied warranties, including, but not limited to, the implied
    warranties of merchantability and fitness for a particular purpose are disclaimed.
    In no event shall the Intel Corporation or contributors be liable for any direct,
    indirect, incidental, special, exemplary, or consequential damages
    (including, but not limited to, procurement of substitute goods or services;
    loss of use, data, or profits; or business interruption) however caused
    and on any theory of liability, whether in contract, strict liability,
    or tort (including negligence or otherwise) arising in any way out of
    the use of this software, even if advised of the possibility of such damage.

    LICENSE
    }
  s.author       = "opencv.org"

  s.source       = { 
    :git => "https://github.com/lukaszkurantdev/fastopencv-ios", 
    :tag => "#{s.version}"
  }

  s.platform     = :ios

  # s.preserve_paths = 'opencv2.xcframework'
  
  # s.source_files = 'opencv2.xcframework/*/opencv2.framework/Versions/A/Headers/**/*{.h,.hpp}'
  
  # s.public_header_files = 'opencv2.xcframework/*/opencv2.framework/Versions/A/Headers/**/*{.h,.hpp}'
  # s.header_dir = 'opencv2'
  # # s.header_mappings_dir = 'opencv2.xcframework/'
  
  # s.libraries    = 'c++', 'stdc++'  
  # s.frameworks = 'opencv2', 'Accelerate', 'AssetsLibrary', 'AVFoundation', 'CoreGraphics', 'CoreImage', 'CoreMedia', 'CoreVideo', 'Foundation', 'QuartzCore', 'UIKit'
  # s.xcconfig = {'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/FastOpenCV-iOS', 'OTHER_LDFLAGS' => '-all_load'}

  s.preserve_paths = "opencv2.xcframework"
  s.vendored_frameworks = "opencv2.xcframework"
  s.requires_arc = false
	s.ios.frameworks = [
    "AssetsLibrary",
    "AVFoundation",
    "CoreGraphics",
    "CoreMedia",
    "CoreVideo",
    "Foundation",
    "QuartzCore",
    "UIKit"
	]

  s.libraries = "c++"
  s.pod_target_xcconfig = {
      "CLANG_CXX_LANGUAGE_STANDARD" => "c++17",
      "CLANG_CXX_LIBRARY" => "libc++",
  }

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
