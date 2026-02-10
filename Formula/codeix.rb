class Codeix < Formula
  desc "Portable, composable code index — build with tree-sitter, query via MCP"
  homepage "https://codeix.dev"
  version "0.3.0"
  license "MIT OR Apache-2.0"

  on_macos do
    url "https://github.com/montanetech/codeix/releases/download/v0.3.0/codeix-aarch64-apple-darwin.tar.gz"
    sha256 "d9e1f2ea714e6a88fe045e22fd29ff5034e72439922b9dbac13cefd50654db76"
  end

  on_linux do
    url "https://github.com/montanetech/codeix/releases/download/v0.3.0/codeix-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "58e93d57667fe586c895adba210b6b42fbf60982628ac4c803b644c7d83d87a5"
  end

  def install
    bin.install "codeix"
  end

  test do
    assert_match "codeix", shell_output("#{bin}/codeix --version")
  end
end
