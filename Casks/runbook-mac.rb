cask "runbook-mac" do
  version "1.8.0"
  sha256 "71ceb9f35bdb0f4a3779749344f605dc60f079eb4eec7b7c58d5ca7b09b55d2e"

  url "https://github.com/msjurset/runbook-mac/releases/download/v#{version}/Runbook-#{version}.zip"
  name "Runbook"
  desc "Mac app for running operational procedures"
  homepage "https://github.com/msjurset/runbook-mac"

  depends_on formula: "msjurset/tap/runbook"

  app "Runbook.app"
end
