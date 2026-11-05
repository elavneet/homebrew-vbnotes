cask "vb-notes" do
  version "0.4.12"
  sha256 "6db48548db77c8ae210a5386dbec971a0d357aed2db76ce7063d6b45ef52babe"

  url "https://github.com/elavneet/vbnotes.com/releases/download/v#{version}/VBNotes_#{version}_universal.dmg",
      verified: "github.com/elavneet/vbnotes.com/"
  name "VB Notes"
  desc "Markdown notes in plain files, searchable by meaning"
  homepage "https://vbnotes.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "VB Notes.app"

  zap trash: [
    "~/Library/Application Support/com.lavneet.vbnotes.desktop",
    "~/Library/Caches/com.lavneet.vbnotes.desktop",
    "~/Library/WebKit/com.lavneet.vbnotes.desktop",
  ]
end
