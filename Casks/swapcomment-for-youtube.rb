cask "swapcomment-for-youtube" do
  version "1.2.0"
  sha256 "1a56d77cdcbd30aceec97b535283f57ab3ad2c92909ff7ba1d93f8fa4d82cf3a"

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
