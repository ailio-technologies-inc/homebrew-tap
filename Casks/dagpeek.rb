cask "dagpeek" do
  version "1.3.3"
  sha256 "ef8ca10740d17c9ff020402e187ed93f46be7b067db6ef859c2ee22a4b261b0d"

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
