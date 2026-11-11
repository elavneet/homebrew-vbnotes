cask "vb-notes" do
  version "0.4.15"
  sha256 "e7a41ada9cc2fbdb1ff8f475fff78f03313d8e91db2e561df993a7d70cf61d5c"

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
