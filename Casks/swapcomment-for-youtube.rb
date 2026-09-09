cask "swapcomment-for-youtube" do
  version "1.0.1"
  sha256 "5c3e357cddb65ff2b5c65fcae1cfd708b119ecc56cb6d1793598c92f643cee1c"

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
