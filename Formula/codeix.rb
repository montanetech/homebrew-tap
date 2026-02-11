class Codeix < Formula
  desc "Portable, composable code index — build with tree-sitter, query via MCP"
  homepage "https://codeix.dev"
  version "0.4.0"
  license "MIT OR Apache-2.0"

  on_macos do
    url "https://github.com/montanetech/codeix/releases/download/v0.4.0/codeix-aarch64-apple-darwin.tar.gz"
    sha256 "773b01e00cbeae4f90cfdeefb6bc32a194d4413181fc38e75600eb18cf953a5e"
  end

  on_linux do
    url "https://github.com/montanetech/codeix/releases/download/v0.4.0/codeix-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bd539c7d84c410dd0ba22199e6862f7a4132e0ef3fab3d7f87c648e97c63c803"
  end

  def install
    bin.install "codeix"
  end

  test do
    assert_match "codeix", shell_output("#{bin}/codeix --version")
  end
end
