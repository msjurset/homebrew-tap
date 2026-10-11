cask "drifter-mac" do
  version "1.1.0"
  sha256 "737a44b614b93339f1516862e8ec420a0a7e5c1bed6875a22c1e1f435ab1a93f"

  url "https://github.com/msjurset/drifter-mac/releases/download/v#{version}/Drifter-#{version}.zip"
  name "Drifter"
  desc "Local network host monitoring, mDNS discovery, and port drift auditing"
  homepage "https://github.com/msjurset/drifter-mac"

  app "Drifter.app"
end
