cask "swapcomment-for-youtube" do
  version "1.1.1"
  sha256 "cab7c4549acb4d364e92809f0018efd6e5d1e6cb3e5e00b391dfd93a923ede43"

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
