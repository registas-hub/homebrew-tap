cask "gesture-ex" do
  version "0.5.1"
  sha256 "5ea50d516c5d8555a3eb61486e59427d3d28c104443b3996a7bb167dbdcd51c4"

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
