class Codeix < Formula
  desc "Portable, composable code index — build with tree-sitter, query via MCP"
  homepage "https://github.com/montanetech/codeix"
  version "0.1.4"
  license "MIT OR Apache-2.0"

  on_macos do
    url "https://github.com/montanetech/codeix/releases/download/v0.1.4/codeix-aarch64-apple-darwin.tar.gz"
    sha256 "undefined"
  end

  on_linux do
    url "https://github.com/montanetech/codeix/releases/download/v0.1.4/codeix-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "undefined"
  end

  def install
    bin.install "codeix"
  end

  test do
    assert_match "codeix", shell_output("#{bin}/codeix --version")
  end
end
