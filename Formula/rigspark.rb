class Rigspark < Formula
  desc "Hardware-aware CLI for choosing and running local LLMs"
  homepage "https://github.com/shashankswe2020-ux/rigspark"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.4/rigspark-aarch64-apple-darwin.tar.gz"
      sha256 "a39aacb8c91ad50a5409686e35b46920d09404fa9319c3ed06bbb6f69cc7557c"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.4/rigspark-x86_64-apple-darwin.tar.gz"
      sha256 "31fff4b0628df8c621a1a5281d9b08ab27b3ee8032169f7e75e1bba96038697c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.4/rigspark-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "28e2ea2ecd13bbbd55e4b9133907864a8e0fca6119bcd146e03961b7a1471eeb"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.4/rigspark-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "69947412959aa6196aa7792333619b7f1ea84c76aec9a3021573b116568fd26e"
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
