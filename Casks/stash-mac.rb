cask "stash-mac" do
  version "1.6.0"
  sha256 "c98662588c7ec8bd9f70ca5cd8b06b19db034d55d80d62b8dcd4d54c9b520812"

  url "https://github.com/msjurset/stash-mac/releases/download/v#{version}/Stash-#{version}.zip"
  name "Stash"
  desc "Mac app for storing, organizing, and retrieving content"
  homepage "https://github.com/msjurset/stash-mac"

  depends_on formula: "msjurset/tap/gostash"

  app "Stash.app"
end
