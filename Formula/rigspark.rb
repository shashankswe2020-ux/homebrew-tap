class Rigspark < Formula
  desc "Hardware-aware CLI for choosing and running local LLMs"
  homepage "https://github.com/shashankswe2020-ux/rigspark"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v2.4.0/rigspark-aarch64-apple-darwin.tar.gz"
      sha256 "091d2829fc568f7e75ceb6c974aba3a755a611f62b88b4652e50f0d1ee7ef82b"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v2.4.0/rigspark-x86_64-apple-darwin.tar.gz"
      sha256 "707ff8f1c2107ba8898b539e05a2a3b13119ca4f7b4c18b1c36a34aba961c2d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v2.4.0/rigspark-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c01c02c50e41744d220f2b273e377f3f558bf253678b9a06ed30616a43b050db"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v2.4.0/rigspark-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "13c602d0783c06138a1f1f316f41dc40ecf1b049bf2b6e72d4fc6a2071a038b4"
    end
  end

  def install
    bin.install "llmup", "rigspark", "rigspark-gui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llmup --version")
  end
end
