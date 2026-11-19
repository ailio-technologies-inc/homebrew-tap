cask "tailfuse" do
  version "0.1.34"
  sha256 "ca3d3fc92507c1269358c98db1e787419579002d27536715470989b6b8084816"

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
