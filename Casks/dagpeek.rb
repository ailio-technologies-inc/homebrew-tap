cask "dagpeek" do
  version "1.3.2"
  sha256 "69f939c3d8d8a4e074f792866d793c1dda217778593043642b0d7ed19f6fc96d"

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
