class Rigspark < Formula
  desc "Hardware-aware CLI for choosing and running local LLMs"
  homepage "https://github.com/rigspark/rigspark"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rigspark/rigspark/releases/download/v3.1.2/rigspark-aarch64-apple-darwin.tar.gz"
      sha256 "e92a8907d63e64f12e16f15392c67384cef26e2901a2821b5527bf0ba547bcde"
    end
    on_intel do
      url "https://github.com/rigspark/rigspark/releases/download/v3.1.2/rigspark-x86_64-apple-darwin.tar.gz"
      sha256 "cd472c6ed0dbe51fa86e4e7407f8ca01c861a48981ef8a431dd8c54b22335780"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rigspark/rigspark/releases/download/v3.1.2/rigspark-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "65fde463c8dcdab700695a8f6f04c0de0ac8a21f4433cab0b10017beb89d9d12"
    end
    on_intel do
      url "https://github.com/rigspark/rigspark/releases/download/v3.1.2/rigspark-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "36366cbab2d2d7186741c26a4c7bd33cec64e3a80d471080729cf4601cf65b34"
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
