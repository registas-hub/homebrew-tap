cask "gesture-ex" do
  version "0.7.0"
  sha256 "bde4cf5224c42063557270e1acb80c5994928b8949768ed3d7a9f9f0a800736f"

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
