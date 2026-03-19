cask "stash-mac" do
  version "1.2.0"
  sha256 "385522ee08d4bfee64d906d4ece7b67da8b102c8a79720c2e5b5eb80bfed7733"

  url "https://github.com/msjurset/stash-mac/releases/download/v#{version}/Stash-#{version}.zip"
  name "Stash"
  desc "Mac app for storing, organizing, and retrieving content"
  homepage "https://github.com/msjurset/stash-mac"

  depends_on formula: "msjurset/tap/gostash"

  app "Stash.app"
end
