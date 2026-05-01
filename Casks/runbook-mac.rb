cask "runbook-mac" do
  version "1.10.0"
  sha256 "acbe26398b53df7a45b206b1669472717a47524db748fee15d59b767b9bc5d42"

  url "https://github.com/msjurset/runbook-mac/releases/download/v#{version}/Runbook-#{version}.zip"
  name "Runbook"
  desc "Mac app for running operational procedures"
  homepage "https://github.com/msjurset/runbook-mac"

  depends_on formula: "msjurset/tap/runbook"

  app "Runbook.app"
end
