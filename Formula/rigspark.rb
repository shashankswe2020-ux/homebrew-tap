class Rigspark < Formula
  desc "Hardware-aware CLI for choosing and running local LLMs"
  homepage "https://github.com/shashankswe2020-ux/rigspark"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.1/rigspark-aarch64-apple-darwin.tar.gz"
      sha256 "37e751c811515c51ebcb8be7b3033097aac63c3260477baea12ddd2e040e3e4e"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.1/rigspark-x86_64-apple-darwin.tar.gz"
      sha256 "9cf955d56b59853d88f6274b90403721cc21ea4b9eb4dececf769d3745c76903"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.1/rigspark-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9dbd04a53046f0f31e209e06525181aef49dcfd98fe4958d18dc17b705075777"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.1/rigspark-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "beb315295b24f8eb5b1ac805e35494d19cfdd8709e6725ef75bc56a6c8ffcffb"
    end
  end

  def install
    bin.install "llmup", "rigspark", "rigspark-gui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llmup --version")
  end
end
