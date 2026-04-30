cask "runbook-mac" do
  version "1.9.0"
  sha256 "575e566b97f05353e59be187c7d808b06257d81261f05784fd3278a399b90fe6"

  url "https://github.com/msjurset/runbook-mac/releases/download/v#{version}/Runbook-#{version}.zip"
  name "Runbook"
  desc "Mac app for running operational procedures"
  homepage "https://github.com/msjurset/runbook-mac"

  depends_on formula: "msjurset/tap/runbook"

  app "Runbook.app"
end
