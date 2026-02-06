class Codeix < Formula
  desc "Portable, composable code index — build with tree-sitter, query via MCP"
  homepage "https://codeix.dev"
  version "0.1.8"
  license "MIT OR Apache-2.0"

  on_macos do
    url "https://github.com/montanetech/codeix/releases/download/v0.1.8/codeix-aarch64-apple-darwin.tar.gz"
    sha256 "4acd63ecfe5437ff164357dc8b4d416346968e2e39daf9a02afe1a6bcf84d569"
  end

  on_linux do
    url "https://github.com/montanetech/codeix/releases/download/v0.1.8/codeix-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a20c054c7dc248223f6ac05ade82f40630598ab85f4fc5e731dc847f3100eee5"
  end

  def install
    bin.install "codeix"
  end

  test do
    assert_match "codeix", shell_output("#{bin}/codeix --version")
  end
end
