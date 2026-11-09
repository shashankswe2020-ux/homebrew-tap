class Rigspark < Formula
  desc "Hardware-aware CLI for choosing and running local LLMs"
  homepage "https://github.com/shashankswe2020-ux/rigspark"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.1.0/rigspark-aarch64-apple-darwin.tar.gz"
      sha256 "23458d12114a1d6eade1745089a2e0908b9af366bb26f737f47efa524758f213"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.1.0/rigspark-x86_64-apple-darwin.tar.gz"
      sha256 "e682f7242ea46575572b79b9e453ff8cf849be94b7de94e054aad6f587fc1e6c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.1.0/rigspark-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bcc8bd54e79cfe04b64f59b58ad02c04f12655b89a109272560cbd30da0cb933"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.1.0/rigspark-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ad3bf89945ea7a8cd3b32c7ec938abd6b4df2f9e48eb6050cc8becd22548878"
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
