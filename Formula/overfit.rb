class Overfit < Formula
  desc "AI commit message and GitHub pull request generator"
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
      "Run 'overfit setup' to choose an AI provider and model. The API key is stored in macOS Keychain."
    end

    on_linux do
      "Run 'overfit setup' to choose an AI provider and model. The API key is stored in ~/.config/overfit/config (mode 0600)."
    end
  end

  test do
    assert_match "overfit commit", shell_output("#{bin}/overfit --help")
  end
end
