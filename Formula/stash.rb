class Stash < Formula
  desc "Store, organize, and retrieve links, files, snippets, images, and emails"
  homepage "https://github.com/msjurset/gostash"
  url "https://github.com/msjurset/gostash/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "696872d747d967f64cf61bd3f40ae0bc07a50f36917ed70e8257077bdf061780"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags:), "./cmd/stash"
    man1.install "stash.1"
    zsh_completion.install "completions/stash.zsh" => "_stash"
    bash_completion.install "completions/stash.bash" => "stash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stash --version")
  end
end
