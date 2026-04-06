cask "runbook-mac" do
  version "1.2.0"
  sha256 "5531ee8c78f8bc913ea3604cb37da7ad6d3fb1434ca0b53aa8f591e1f10ceb32"

  url "https://github.com/msjurset/runbook-mac/releases/download/v#{version}/Runbook-#{version}.zip"
  name "Runbook"
  desc "Mac app for running operational procedures"
  homepage "https://github.com/msjurset/runbook-mac"

  depends_on formula: "msjurset/tap/runbook"

  app "Runbook.app"
end
