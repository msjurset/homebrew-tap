cask "stash-mac" do
  version "1.11.7"
  sha256 "333632e901059339187e2f4b5bf52e51a755de78b0d2c8a52efb028c50025c02"

  url "https://github.com/msjurset/stash-mac/releases/download/v#{version}/Stash-#{version}.zip"
  name "Stash"
  desc "Mac app for storing, organizing, and retrieving content"
  homepage "https://github.com/msjurset/stash-mac"

  depends_on formula: "msjurset/tap/gostash"

  app "Stash.app"
end
