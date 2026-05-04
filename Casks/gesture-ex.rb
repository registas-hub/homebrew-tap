cask "gesture-ex" do
  version "0.5.0"
  sha256 "f7825bb70b224667dcac4397d954a2634c57a23f46b9959f4bcecf673388d66f"

  url "https://github.com/registas-hub/gesture-ex/releases/download/v#{version}/gesture-ex-v#{version}.zip"
  name "gesture-ex"
  desc "Right-click on mouse-up + browser mouse gestures (Chromium / WebKit)"
  homepage "https://github.com/registas-hub/gesture-ex"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "gesture-ex.app"

  uninstall quit: "com.registas.gesture-ex"

  zap trash: [
    "~/Library/Preferences/com.registas.gesture-ex.plist",
  ]
end
