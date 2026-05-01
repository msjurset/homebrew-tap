class Runbook < Formula
  desc "Run multi-step operational procedures defined in YAML"
  homepage "https://github.com/msjurset/runbook"
  version "1.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/msjurset/runbook/releases/download/v1.8.0/runbook-1.8.0-darwin-arm64.tar.gz"
      sha256 "6e0cbd00d292b3abef0b02041c29ff00af9e722ab93d4de69bd6ababc158f708"
    end
    on_intel do
      url "https://github.com/msjurset/runbook/releases/download/v1.8.0/runbook-1.8.0-darwin-amd64.tar.gz"
      sha256 "4645021f9965d95ef07682cdf1854d764b0f7fecf5bd2e6434bec0eb9606b405"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/msjurset/runbook/releases/download/v1.8.0/runbook-1.8.0-linux-arm64.tar.gz"
      sha256 "4c206474d3cbd5b146d19ecc8da872e65e3cae5804e4f2d115abf545e9bbe834"
    end
    on_intel do
      url "https://github.com/msjurset/runbook/releases/download/v1.8.0/runbook-1.8.0-linux-amd64.tar.gz"
      sha256 "cd957f4041cf2ec81fd797b1ba53dab709ceea5324f0674614d5862c46feeaa7"
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
