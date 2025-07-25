cask "isubtitle" do
  version "3.4.6"
  sha256 "41b7bdaa76d1658bea862822521678f3e8432dd5e941101c4ab045eec17c3ca8"

  url "https://www.bitfield.se/isubtitle#{version.major}/download/iSubtitle_#{version}.zip"
  name "iSubtitle"
  desc "Inject subtitle tracks, chapter markers and metadata into your media"
  homepage "https://www.bitfield.se/isubtitle/"

  livecheck do
    url "https://www.bitfield.se/isubtitle#{version.major}/changelog.xml"
    strategy :sparkle, &:short_version
  end

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :catalina"

  app "iSubtitle.app"

  zap trash: [
    "~/Library/Application Support/iSubtitle",
    "~/Library/Caches/se.bitfield.iSubtitle-*.sw",
    "~/Library/HTTPStorages/se.bitfield.iSubtitle-*.sw",
    "~/Library/HTTPStorages/se.bitfield.iSubtitle-*.sw.binarycookies",
    "~/Library/Preferences/se.bitfield.iSubtitle-*.sw.plist",
    "~/Library/Saved Application State/se.bitfield.iSubtitle-*.sw.savedState",
  ]
end
