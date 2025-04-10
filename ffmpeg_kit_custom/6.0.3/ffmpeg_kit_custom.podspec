Pod::Spec.new do |s|
  s.name             = 'ffmpeg_kit_custom'
  s.version          = '6.0.3'
  s.summary          = 'FFmpeg Kit Bundled for Flutter'
  s.description      = 'A Flutter plugin for running FFmpeg and FFprobe commands.'
  s.homepage         = 'https://github.com/ente-io/ffmpeg-kit-forked'
  s.license          = 'GPL-3.0'
  s.author           = { 'Prateek' => 'prtksunal@gmail.com' }

  s.platform            = :ios
  s.requires_arc        = true
  s.static_framework    = true
  s.ios.deployment_target = "12.1"

  s.source              = {
    :http => "https://github.com/ente-io/ffmpeg-kit-forked/releases/download/v6.0.0/ffmpegkit-bundled.xcframework.zip"
  }

  s.libraries = [
    "z",
    "bz2",
    "c++",
    "iconv"
  ]

  s.frameworks = [
    "AudioToolbox",
    "AVFoundation",
    "CoreMedia",
    "VideoToolbox"
  ]

  s.vendored_frameworks = [
    'ffmpegkit.xcframework',
    'libavcodec.xcframework',
    'libavdevice.xcframework',
    'libavfilter.xcframework',
    'libavformat.xcframework',
    'libavutil.xcframework',
    'libswresample.xcframework',
    'libswscale.xcframework'
  ]
end

