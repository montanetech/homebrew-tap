class Codeix < Formula
  desc "Portable, composable code index — build with tree-sitter, query via MCP"
  homepage "https://github.com/montanetech/codeix"
  version "0.1.7"
  license "MIT OR Apache-2.0"

  on_macos do
    url "https://github.com/montanetech/codeix/releases/download/v0.1.7/codeix-aarch64-apple-darwin.tar.gz"
    sha256 "4f2a8068525914f4ec22ae96beec879449b4d36a3888dd9fbda78f0499670376"
  end

  on_linux do
    url "https://github.com/montanetech/codeix/releases/download/v0.1.7/codeix-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fbcbea37ee35004a4c18243b2d9b63370da416ba0fa431dc09d072a951362ae4"
  end

  def install
    bin.install "codeix"
  end

  test do
    assert_match "codeix", shell_output("#{bin}/codeix --version")
  end
end
