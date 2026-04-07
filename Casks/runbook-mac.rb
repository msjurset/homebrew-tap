cask "runbook-mac" do
  version "1.3.0"
  sha256 "589661424b8e8a65143b5722c7bdd84f8b594b65f620aaa62cdbece2f472f3cd"

  url "https://github.com/msjurset/runbook-mac/releases/download/v#{version}/Runbook-#{version}.zip"
  name "Runbook"
  desc "Mac app for running operational procedures"
  homepage "https://github.com/msjurset/runbook-mac"

  depends_on formula: "msjurset/tap/runbook"

  app "Runbook.app"
end
