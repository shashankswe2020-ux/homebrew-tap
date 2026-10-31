class Rigspark < Formula
  desc "Hardware-aware CLI for choosing and running local LLMs"
  homepage "https://github.com/shashankswe2020-ux/rigspark"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.6/rigspark-aarch64-apple-darwin.tar.gz"
      sha256 "ec0054eba813c84e60f46a0fb89fa31d2d8ba54105c2c0a63269312c8a52bf66"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.6/rigspark-x86_64-apple-darwin.tar.gz"
      sha256 "645aa6389e5496311a8650aa9e201c75b7b01efc7a077f50435652b25c97afdb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.6/rigspark-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "596bb32c4ee815e2ecf9a6824eb355156758d6fe1fa32a0009188a3dde5b08f4"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.6/rigspark-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d139e9f656e26af006332201810ed0c8b8f21b54c5987c4bc12f24d453d4efae"
    end
  end

  def install
    bin.install "llmup", "rigspark", "rigspark-gui"
  end

  def caveats
    <<~EOS
      If Sparky helps you, please consider sponsoring the project:
      https://buymeacoffee.com/shashanksw9
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llmup --version")
  end
end
