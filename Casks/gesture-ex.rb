cask "gesture-ex" do
  version "0.4.0"
  sha256 "256a6e65474ef449c68d78e25c881ffafd9bc3a0b1580d69ce67ce7423faf3fc"

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
