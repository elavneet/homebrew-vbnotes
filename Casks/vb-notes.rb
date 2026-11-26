cask "vb-notes" do
  version "0.4.26"
  sha256 "97707d3f11b0df917780a3d0ef05784c6a299db1e8c7169408189e530df9cf39"

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
