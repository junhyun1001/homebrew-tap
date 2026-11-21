cask "swapcomment-for-youtube" do
  version "1.2.0"
  sha256 "e59ae039e524ac7dd06cf8dc9c5644c1dc11417c8237459db6ff20545156bd33"

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
