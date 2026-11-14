cask "tailfuse" do
  version "0.1.15"
  sha256 "ca4aae320c75a322f9058a0611d7e342bf9049be809705619ac3496b4ba2af75"

  url "https://github.com/ailio-technologies-inc/tailfuse/releases/download/v#{version}/tailfuse-app-v#{version}-macos-universal.zip"
  name "Tailfuse"
  desc "Menu bar app for using several Tailscale tailnets at once"
  homepage "https://tailfuse.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Tailfuse.app"

  zap trash: [
    "~/.config/tailfuse",
    "~/Library/Application Support/tailfuse",
    "~/Library/Caches/com.ailio.tailfuse",
    "~/Library/Preferences/com.ailio.tailfuse.plist",
  ]
end
