cask "stash-mac" do
  version "1.3.0"
  sha256 "a1ac77c1f7c5a4b039fe197e8ed43ff108b523115d258d6cd09b2661de7a1a98"

  url "https://github.com/msjurset/stash-mac/releases/download/v#{version}/Stash-#{version}.zip"
  name "Stash"
  desc "Mac app for storing, organizing, and retrieving content"
  homepage "https://github.com/msjurset/stash-mac"

  depends_on formula: "msjurset/tap/gostash"

  app "Stash.app"
end
