cask "stash-mac" do
  version "1.5.0"
  sha256 "f9ee95a6142cf2ba54bd1621141da524089d8a27c3c0b0c7024cf42b8fe5e5b9"

  url "https://github.com/msjurset/stash-mac/releases/download/v#{version}/Stash-#{version}.zip"
  name "Stash"
  desc "Mac app for storing, organizing, and retrieving content"
  homepage "https://github.com/msjurset/stash-mac"

  depends_on formula: "msjurset/tap/gostash"

  app "Stash.app"
end
