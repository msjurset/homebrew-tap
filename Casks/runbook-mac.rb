cask "runbook-mac" do
  version "1.11.2"
  sha256 "4380e2532216b49f1c519d3ac1dceb01abe7232f4ae9001927ebf82304ce397a"

  url "https://github.com/msjurset/runbook-mac/releases/download/v#{version}/Runbook-#{version}.zip"
  name "Runbook"
  desc "Mac app for running operational procedures"
  homepage "https://github.com/msjurset/runbook-mac"

  depends_on formula: "msjurset/tap/runbook"

  app "Runbook.app"
end
