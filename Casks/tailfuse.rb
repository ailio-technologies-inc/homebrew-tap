cask "tailfuse" do
  version "0.1.37"
  sha256 "2a264817103edbe839a90164e981c463f4391ce0f4efc36ff968f9e78678f8e9"

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
