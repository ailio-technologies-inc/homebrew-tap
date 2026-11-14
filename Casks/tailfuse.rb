cask "tailfuse" do
  version "0.1.14"
  sha256 "0f59ad50dde7966da8b72d462138891444b22bb8c0694526a9b264aaf7a42c53"

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
