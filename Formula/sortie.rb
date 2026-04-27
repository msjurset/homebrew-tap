class Sortie < Formula
  desc "Intelligent file dispatcher — rule-based routing for ~/Downloads and ~/Desktop"
  homepage "https://github.com/msjurset/sortie"
  url "https://github.com/msjurset/sortie/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "75ad37528cf6d506d2a7f32ed8d9612a3ca6da223a3fa23374f2069c7c0ea14e"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags:), "./cmd/sortie"
    man1.install "sortie.1"
    zsh_completion.install "completions/_sortie"
    bash_completion.install "completions/sortie.bash" => "sortie"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sortie --version")
  end
end
