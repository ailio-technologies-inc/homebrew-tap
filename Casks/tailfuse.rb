cask "tailfuse" do
  version "0.1.16"
  sha256 "1f0fc45f4fba1197adb6cf67295b8e2715f0d0370b7655cd5f2c2d0561dfa629"

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
