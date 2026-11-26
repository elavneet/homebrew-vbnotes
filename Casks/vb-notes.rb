cask "vb-notes" do
  version "0.4.25"
  sha256 "db6bbaac0f415d7bbb6e5bf6c486a111fe3942701ead35589dc8454502f6d86f"

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
