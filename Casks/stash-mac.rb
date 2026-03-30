cask "stash-mac" do
  version "1.4.0"
  sha256 "cf8332a6ea3fe78aa84cd2db2cdf104650f1bb31b63400261c59551d44c21a53"

  url "https://github.com/msjurset/stash-mac/releases/download/v#{version}/Stash-#{version}.zip"
  name "Stash"
  desc "Mac app for storing, organizing, and retrieving content"
  homepage "https://github.com/msjurset/stash-mac"

  depends_on formula: "msjurset/tap/gostash"

  app "Stash.app"
end
