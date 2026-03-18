cask "stash-mac" do
  version "1.0.0"
  sha256 "PLACEHOLDER"

  url "https://github.com/msjurset/stash-mac/releases/download/v#{version}/Stash-#{version}.zip"
  name "Stash"
  desc "Mac app for storing, organizing, and retrieving content"
  homepage "https://github.com/msjurset/stash-mac"

  depends_on formula: "msjurset/tap/stash"

  app "Stash.app"
end
