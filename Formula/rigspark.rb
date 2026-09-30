class Rigspark < Formula
  desc "Hardware-aware CLI for choosing and running local LLMs"
  homepage "https://github.com/shashankswe2020-ux/rigspark"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v2.0.0/rigspark-aarch64-apple-darwin.tar.gz"
      sha256 "dbd80099d841cdfb33a14fc8830b1774bed8d3121c89783673e8850d0b15d703"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v2.0.0/rigspark-x86_64-apple-darwin.tar.gz"
      sha256 "0146ed53387a359614471295ff3541a33fac7089b99ba152165589d9f1c0aa70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v2.0.0/rigspark-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "081563ab996c256eb6ab08120851ce4d1ba62f0cea6e2b8cad8cd10be7efc5c2"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v2.0.0/rigspark-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1109350e045400d38e9326e092c91168d8bd7b92e5fdd562c75c6376bb40d566"
    end
  end

  def install
    bin.install "llmup", "rigspark", "rigspark-gui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llmup --version")
  end
end
