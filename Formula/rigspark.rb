class Rigspark < Formula
  desc "Hardware-aware CLI for choosing and running local LLMs"
  homepage "https://github.com/shashankswe2020-ux/rigspark"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.8/rigspark-aarch64-apple-darwin.tar.gz"
      sha256 "466db387a0f61e9ae57ea5e59ce6e3fdd2becb2eaffd56262f798f56ac399de7"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.8/rigspark-x86_64-apple-darwin.tar.gz"
      sha256 "481ace6989fe829a1a514c8ad71b20b11a877bf52617be3fad565d59b735fcc0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.8/rigspark-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f9147327d718351d98f4402b9357096bfb3d8c735b0946f9ede0b6214613b437"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.8/rigspark-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eeb78547513b72b9b1d9f30a6be03915c8a4939b07f986399caa3bb4a74be8c3"
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
