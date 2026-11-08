cask "dagpeek" do
  version "1.3.0"
  sha256 "1ead84f07caac077ad3f694216b28c5eba95eb6b403d92eb387b60ef141d62ab"

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
