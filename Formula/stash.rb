class Stash < Formula
  desc "Store, organize, and retrieve links, files, snippets, images, and emails"
  homepage "https://github.com/msjurset/gostash"
  url "https://github.com/msjurset/gostash/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "PLACEHOLDER"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags:), "./cmd/stash"
    zsh_completion.install "completions/stash.zsh" => "_stash"
    bash_completion.install "completions/stash.bash" => "stash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stash --version")
  end
end
