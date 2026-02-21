class Codeix < Formula
  desc "Portable, composable code index — build with tree-sitter, query via MCP"
  homepage "https://codeix.dev"
  version "0.5.0"
  license "MIT OR Apache-2.0"

  on_macos do
    url "https://github.com/montanetech/codeix/releases/download/v0.5.0/codeix-aarch64-apple-darwin.tar.gz"
    sha256 "c32334d9beb4e34962d97874367cf3645eaf81a8fbee64572cf98969a6c5a694"
  end

  on_linux do
    url "https://github.com/montanetech/codeix/releases/download/v0.5.0/codeix-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c1d4ad3d7202b39700b9e957a05cd1e9399ccb6d590d51ed173fdd20ef7a2d85"
  end

  def install
    bin.install "codeix"
  end

  test do
    assert_match "codeix", shell_output("#{bin}/codeix --version")
  end
end
