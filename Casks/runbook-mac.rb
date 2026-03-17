cask "runbook-mac" do
  version "1.0.0"
  sha256 "63fbadb1fe235f61087f0a12c7539cb7e096ab7351a2d75e6135205dbb9a5b3a"

  url "https://github.com/msjurset/runbook-mac/releases/download/v#{version}/Runbook-#{version}.zip"
  name "Runbook"
  desc "Mac app for running operational procedures"
  homepage "https://github.com/msjurset/runbook-mac"

  depends_on formula: "msjurset/tap/runbook"

  app "Runbook.app"
end
