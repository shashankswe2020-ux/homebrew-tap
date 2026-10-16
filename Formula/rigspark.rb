class Rigspark < Formula
  desc "Hardware-aware CLI for choosing and running local LLMs"
  homepage "https://github.com/shashankswe2020-ux/rigspark"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.3/rigspark-aarch64-apple-darwin.tar.gz"
      sha256 "603d05b8ebf40e4db4a7338608a0e10e6b05dbdc479e71b16f09cdffb15e5ce1"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.3/rigspark-x86_64-apple-darwin.tar.gz"
      sha256 "594feee79bba33dc8db673af1fa5c5380f61b890d213b3d350f2e703ecaa9a69"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.3/rigspark-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2c6fda168c1e24337e6c38beb4a0b81a086a6f4f14ac726c0f1409f1c26b75e7"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.3/rigspark-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "19d7d027154690c783c900a739405c208def33c633772b349e0d828f41ac6e56"
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
