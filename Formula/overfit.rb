class Overfit < Formula
  desc "CLI tool for multi-turn conversations with AI providers"
  homepage "https://github.com/israelsaba/overfit"
  url "https://github.com/israelsaba/overfit/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ada61bdf38a7cea189ed5af6d23571595e90a521eaba44e7dead6c0af10b7d8c"
  license "MIT"

  depends_on "curl"
  depends_on "gh"
  depends_on "git"

  def install
    system "make", "overfit"
    bin.install "overfit"
  end

  def caveats
    on_macos do
      "Credentials are stored in macOS Keychain. Run 'overfit' to configure."
    end

    on_linux do
      "Credentials are stored in ~/.config/overfit/config (mode 0600).\nRun 'overfit' to configure."
    end
  end

  test do
    system "#{bin}/overfit", "--help"
    assert_match "overfit", shell_output("#{bin}/overfit --help")
  end
end
