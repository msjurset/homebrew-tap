cask "runbook-mac" do
  version "1.7.0"
  sha256 "e5a2b5c8b69416a98bf8a62bff1b53e5bb6b0c4aa5ed36fbd0ef020e7476619e"

  url "https://github.com/msjurset/runbook-mac/releases/download/v#{version}/Runbook-#{version}.zip"
  name "Runbook"
  desc "Mac app for running operational procedures"
  homepage "https://github.com/msjurset/runbook-mac"

  depends_on formula: "msjurset/tap/runbook"

  app "Runbook.app"
end
