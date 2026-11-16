cask "cumulus" do
  version "1.2.0"
  sha256 "413aacf9071483bd2f07415515d1c6bbc74d49696a43c609d0128b05c5c1fb33"

  url "https://github.com/guikbsx/xcode-cloud-companion/releases/download/v#{version}/Cumulus-#{version}.zip"
  name "Cumulus"
  desc "Menu bar app for Xcode Cloud builds and usage"
  homepage "https://cumulus.guik.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Cumulus.app"
  binary "#{appdir}/Cumulus.app/Contents/Helpers/cumulus"

  zap trash: [
    "~/Library/Application Scripts/4HYT2U85R2.com.guik.cumulus",
    "~/Library/Application Scripts/com.guik.xcode-cloud-companion",
    "~/Library/Application Scripts/com.guik.xcode-cloud-companion.cli",
    "~/Library/Application Scripts/com.guik.xcode-cloud-companion.widgets",
    "~/Library/Containers/com.guik.xcode-cloud-companion",
    "~/Library/Containers/com.guik.xcode-cloud-companion.cli",
    "~/Library/Containers/com.guik.xcode-cloud-companion.widgets",
    "~/Library/Group Containers/4HYT2U85R2.com.guik.cumulus",
  ]
end
