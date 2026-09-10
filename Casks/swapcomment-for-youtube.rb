cask "swapcomment-for-youtube" do
  version "1.1.0"
  sha256 "e611adcbe8aef9456323378d5a09a763ecb1c303e1959b2ebcedec11f73b0b5b"

  url "https://github.com/junhyun1001/SwapComment-for-YouTube/releases/download/v#{version}/SwapComment-for-YouTube.zip"
  name "SwapComment for YouTube"
  desc "Lightweight native macOS client that brings YouTube comments to sidebar"
  homepage "https://github.com/junhyun1001/SwapComment-for-YouTube"

  depends_on macos: :ventura

  app "SwapComment for YouTube.app"

  zap trash: [
    "~/Library/Saved Application State/com.junhyun.SwapCommentForYouTube.savedState",
    "~/Library/WebKit/com.junhyun.SwapCommentForYouTube",
  ]
end
