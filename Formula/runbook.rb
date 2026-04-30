class Runbook < Formula
  desc "Personal command center and runbook engine"
  homepage "https://github.com/msjurset/runbook"
  url "https://github.com/msjurset/runbook/archive/refs/tags/v1.7.0.tar.gz"
  sha256 "f8f16833f61788204c83d3168e53b073cd6a948d55243ca35825d86dbfffec1d"
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
