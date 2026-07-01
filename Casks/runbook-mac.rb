cask "runbook-mac" do
  version "1.11.1"
  sha256 "2fe988af14b849b1f8635b558c169778a37a09ed8e89a0a0944a039ea7ca57f9"

  url "https://github.com/msjurset/runbook-mac/releases/download/v#{version}/Runbook-#{version}.zip"
  name "Runbook"
  desc "Mac app for running operational procedures"
  homepage "https://github.com/msjurset/runbook-mac"

  depends_on formula: "msjurset/tap/runbook"

  app "Runbook.app"
end
