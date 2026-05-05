cask "stash-mac" do
  version "1.8.0"
  sha256 "1536cfea31d5cb629dc7a5b6f7192c31156cca9fde838f7156bff5ff18a45b9d"

  url "https://github.com/msjurset/stash-mac/releases/download/v#{version}/Stash-#{version}.zip"
  name "Stash"
  desc "Mac app for storing, organizing, and retrieving content"
  homepage "https://github.com/msjurset/stash-mac"

  depends_on formula: "msjurset/tap/gostash"

  app "Stash.app"
end
