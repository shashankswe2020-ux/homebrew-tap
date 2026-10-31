class Rigspark < Formula
  desc "Hardware-aware CLI for choosing and running local LLMs"
  homepage "https://github.com/shashankswe2020-ux/rigspark"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.5/rigspark-aarch64-apple-darwin.tar.gz"
      sha256 "59892d0f323a1b9dabfb7fa818e0f1ec9005ba1f4af47f169f57d919a1670f98"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.5/rigspark-x86_64-apple-darwin.tar.gz"
      sha256 "04644888cd3999a31c40a0aee50be470a18f008cc4473a7fe88e31497e212327"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.5/rigspark-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "afb9ce4aa849f6da9514e7a7b4637001c29398651c2135852a60d540b6b8af04"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.5/rigspark-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "11e18ba641f698b4e24ec54f1094d86b4094fce75b9a6e4f596db7363021975f"
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
