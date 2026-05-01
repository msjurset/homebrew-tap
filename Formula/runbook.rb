class Runbook < Formula
  desc "Run multi-step operational procedures defined in YAML"
  homepage "https://github.com/msjurset/runbook"
  version "1.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/msjurset/runbook/releases/download/v1.7.0/runbook-1.7.0-darwin-arm64.tar.gz"
      sha256 "b8b44072ce1f81ea3cff6d99de300e5d738ecf64722072e443561f7249419810"
    end
    on_intel do
      url "https://github.com/msjurset/runbook/releases/download/v1.7.0/runbook-1.7.0-darwin-amd64.tar.gz"
      sha256 "7e29ce8d98b09cf14d6fae22b192943f614462d43848dc7265298506bd45f243"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/msjurset/runbook/releases/download/v1.7.0/runbook-1.7.0-linux-arm64.tar.gz"
      sha256 "e01d39bcb8dc61fad22e2fd779e62e7cecf48eb0898ba1e824d57f572a036cdb"
    end
    on_intel do
      url "https://github.com/msjurset/runbook/releases/download/v1.7.0/runbook-1.7.0-linux-amd64.tar.gz"
      sha256 "495f909c6f3bb9964dafbe724d7da32796e1f4be50c0f1593505a3411a849a27"
    end
  end

  def install
    bin.install "runbook"
    man1.install "runbook.1"
    zsh_completion.install "_runbook"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/runbook --version")
  end
end
