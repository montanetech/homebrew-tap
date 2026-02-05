class Codeix < Formula
  desc "Portable, composable code index — build with tree-sitter, query via MCP"
  homepage "https://github.com/montanetech/codeix"
  version "0.1.5"
  license "MIT OR Apache-2.0"

  on_macos do
    url "https://github.com/montanetech/codeix/releases/download/v0.1.5/codeix-aarch64-apple-darwin.tar.gz"
    sha256 "fa48580384af49da0c57ae49e916e5c4b5d701d6e50fad9456fbdddf95d9ce23"
  end

  on_linux do
    url "https://github.com/montanetech/codeix/releases/download/v0.1.5/codeix-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5dfaba9b770ba17367b36c8b2e1225d07c1b66b03a0e385b42001887ae475135"
  end

  def install
    bin.install "codeix"
  end

  test do
    assert_match "codeix", shell_output("#{bin}/codeix --version")
  end
end
