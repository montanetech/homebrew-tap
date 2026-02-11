class Codeix < Formula
  desc "Portable, composable code index — build with tree-sitter, query via MCP"
  homepage "https://codeix.dev"
  version "0.4.1"
  license "MIT OR Apache-2.0"

  on_macos do
    url "https://github.com/montanetech/codeix/releases/download/v0.4.1/codeix-aarch64-apple-darwin.tar.gz"
    sha256 "31b923757c7ab0107a2e64b0d22fbc9b7528efca580d9f2140018853c8c761cf"
  end

  on_linux do
    url "https://github.com/montanetech/codeix/releases/download/v0.4.1/codeix-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b2cbe3f2f54b359cb8012138db5c0448c01258873c4e798755347fdcbfa95c98"
  end

  def install
    bin.install "codeix"
  end

  test do
    assert_match "codeix", shell_output("#{bin}/codeix --version")
  end
end
