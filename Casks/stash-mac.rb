cask "stash-mac" do
  version "1.1.0"
  sha256 "54fb38c0b6d2f1e42a52ba3ddb19cdc0353cb0a6f3aa8cea29e8cfb3c7b9634a"

  url "https://github.com/msjurset/stash-mac/releases/download/v#{version}/Stash-#{version}.zip"
  name "Stash"
  desc "Mac app for storing, organizing, and retrieving content"
  homepage "https://github.com/msjurset/stash-mac"

  depends_on formula: "msjurset/tap/stash"

  app "Stash.app"
end
