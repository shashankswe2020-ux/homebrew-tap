class Rigspark < Formula
  desc "Hardware-aware CLI for choosing and running local LLMs"
  homepage "https://github.com/rigspark/rigspark"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rigspark/rigspark/releases/download/v3.1.3/rigspark-aarch64-apple-darwin.tar.gz"
      sha256 "f074da583e5da8b79ed4529097edd26aa414ed937ddc7e4fd41c5a482fd716e8"
    end
    on_intel do
      url "https://github.com/rigspark/rigspark/releases/download/v3.1.3/rigspark-x86_64-apple-darwin.tar.gz"
      sha256 "087f4f1af5da4b0f2775b53ad681291b1bd5619393a1269c048905de9764dd8d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rigspark/rigspark/releases/download/v3.1.3/rigspark-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a5da822cd36544a9b9a6694c0ed6d99761b062d913338ccdbfaeeb017e97f288"
    end
    on_intel do
      url "https://github.com/rigspark/rigspark/releases/download/v3.1.3/rigspark-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "06e2142da46c630f13c1673d5e9a9ca7e533d9b49807ab3aa216118f20464724"
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
