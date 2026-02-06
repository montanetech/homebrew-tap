class Codeix < Formula
  desc "Portable, composable code index — build with tree-sitter, query via MCP"
  homepage "https://codeix.dev"
  version "0.2.0"
  license "MIT OR Apache-2.0"

  on_macos do
    url "https://github.com/montanetech/codeix/releases/download/v0.2.0/codeix-aarch64-apple-darwin.tar.gz"
    sha256 "62315ae61c17539f7367db93c4cc61b47045becaf8b00ce5401eb4b5b4099b4a"
  end

  on_linux do
    url "https://github.com/montanetech/codeix/releases/download/v0.2.0/codeix-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "de0429ae6c9c6ee758e44cd55178d5a12c533308ae40844da549768fbec9ddaf"
  end

  def install
    bin.install "codeix"
  end

  test do
    assert_match "codeix", shell_output("#{bin}/codeix --version")
  end
end
