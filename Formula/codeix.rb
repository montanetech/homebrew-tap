class Codeix < Formula
  desc "Portable, composable code index — build with tree-sitter, query via MCP"
  homepage "https://github.com/montanetech/codeix"
  version "0.1.6"
  license "MIT OR Apache-2.0"

  on_macos do
    url "https://github.com/montanetech/codeix/releases/download/v0.1.6/codeix-aarch64-apple-darwin.tar.gz"
    sha256 "ceb58baf84033b1dbe0078370ff44a04bab6eb596e549254d8b41152327f2c2e"
  end

  on_linux do
    url "https://github.com/montanetech/codeix/releases/download/v0.1.6/codeix-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9334b20dbdaae0b921c6186da15d06b0cdfb1dc516e25beabf95499f9063e30e"
  end

  def install
    bin.install "codeix"
  end

  test do
    assert_match "codeix", shell_output("#{bin}/codeix --version")
  end
end
