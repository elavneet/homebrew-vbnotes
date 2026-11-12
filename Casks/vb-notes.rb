cask "vb-notes" do
  version "0.4.17"
  sha256 "2e5fd77ed33980dd44e594a01c707fda1035520af454bc118c51a98b6771e6cc"

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
