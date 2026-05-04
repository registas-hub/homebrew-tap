cask "gesture-ex" do
  version "0.5.2"
  sha256 "2d4ce3e905568cfe976f2291ebc2c6cc19645f14d7e6400d9625ab0cca57209a"

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
