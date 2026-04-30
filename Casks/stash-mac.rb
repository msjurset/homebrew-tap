cask "stash-mac" do
  version "1.7.0"
  sha256 "6533985e0cc582f8c090672d4f61426f497bc24dab6ae4365f4893d8804d5abf"

  url "https://github.com/msjurset/stash-mac/releases/download/v#{version}/Stash-#{version}.zip"
  name "Stash"
  desc "Mac app for storing, organizing, and retrieving content"
  homepage "https://github.com/msjurset/stash-mac"

  depends_on formula: "msjurset/tap/gostash"

  app "Stash.app"
end
