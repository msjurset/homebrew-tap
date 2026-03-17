class Runbook < Formula
  desc "Run multi-step operational procedures defined in YAML"
  homepage "https://github.com/msjurset/runbook"
  url "https://github.com/msjurset/runbook/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "8970c73aa99a857dff334bd4cc6a1d591ab622fb1b984aa00be98a7e2855f913"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags:), "./cmd/runbook"
    man1.install "runbook.1"
    zsh_completion.install "_runbook"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/runbook --version")
  end
end
