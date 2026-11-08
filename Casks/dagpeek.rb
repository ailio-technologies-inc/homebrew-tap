cask "dagpeek" do
  version "1.2.1"
  sha256 "588b807ab08ebe7cfb921eb0d07df5d0cf4cd3ceb010d2db9d7374d17818eeb3"

  url "https://github.com/ailio-technologies-inc/dagpeek/releases/download/v#{version}/Dagpeek-mac.dmg"
  name "Dagpeek"
  desc "Menu bar app for watching Dagu runs"
  homepage "https://dagpeek.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Dagpeek.app"
  binary "#{appdir}/Dagpeek.app/Contents/MacOS/dagpeek"

  zap trash: [
    "~/Library/Application Support/dagpeek",
    "~/Library/Caches/com.ailio.dagpeek",
    "~/Library/Preferences/com.ailio.dagpeek.plist",
  ]
end
