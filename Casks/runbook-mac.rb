cask "runbook-mac" do
  version "1.4.0"
  sha256 "9a88ee02ed1ea84b7317c719da68acb3d53487d703d2128a89cd1cc0f58b307f"

  url "https://github.com/msjurset/runbook-mac/releases/download/v#{version}/Runbook-#{version}.zip"
  name "Runbook"
  desc "Mac app for running operational procedures"
  homepage "https://github.com/msjurset/runbook-mac"

  depends_on formula: "msjurset/tap/runbook"

  app "Runbook.app"
end
