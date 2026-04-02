cask "stash-mac" do
  version "1.5.1"
  sha256 "9668b37cbb7ec81ea6974794859728415cdf19d35e1945d6e0718686d01412a7"

  url "https://github.com/msjurset/stash-mac/releases/download/v#{version}/Stash-#{version}.zip"
  name "Stash"
  desc "Mac app for storing, organizing, and retrieving content"
  homepage "https://github.com/msjurset/stash-mac"

  depends_on formula: "msjurset/tap/gostash"

  app "Stash.app"
end
