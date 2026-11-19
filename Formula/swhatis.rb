class Swhatis < Formula
  desc "Concurrent multi-source command, binary, script, and package identifier"
  homepage "https://github.com/msjurset/swhatis"
  url "https://github.com/msjurset/swhatis/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "603d1fe57bf8bd4c88ca3a79ac857c2a11fc33d1153f4749050f0b415a9fb78e"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags:), "."
    man1.install "swhatis.1"
    zsh_completion.install "completions/_swhatis"
    bash_completion.install "completions/swhatis.bash" => "swhatis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/swhatis -version")
  end
end
