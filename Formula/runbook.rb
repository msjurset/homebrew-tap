class Runbook < Formula
  desc "Personal command center and runbook engine"
  homepage "https://github.com/msjurset/runbook"
  url "https://github.com/msjurset/runbook/archive/refs/tags/v1.6.0.tar.gz"
  sha256 "b388b3b65ae21b48120c2addb35806d4e7db40f11d3bc607dcaf1b2370c01f64"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/runbook"
    man1.install "runbook.1"
    zsh_completion.install "_runbook"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/runbook -version")
  end
end
