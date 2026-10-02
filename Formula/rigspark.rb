class Rigspark < Formula
  desc "Hardware-aware CLI for choosing and running local LLMs"
  homepage "https://github.com/shashankswe2020-ux/rigspark"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v2.2.0/rigspark-aarch64-apple-darwin.tar.gz"
      sha256 "507fa2b7fd2596de4a569910cb4c7974654a0bd5d831f8f1c7a2c66dfe937074"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v2.2.0/rigspark-x86_64-apple-darwin.tar.gz"
      sha256 "a57351a92c671f7ea1fd64625a4385b7ec591e33dad8a53aa551f9780e01d556"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v2.2.0/rigspark-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "720c84c3ffde66b58ef3d4824f83125fe9208e1b833361689bddf2980be65e68"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v2.2.0/rigspark-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "820494f7558128773da2cd0cdc1e1f28626bcf2c2d0722892b5c03f95dfb8ff5"
    end
  end

  def install
    bin.install "llmup", "rigspark", "rigspark-gui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llmup --version")
  end
end
