class Rigspark < Formula
  desc "Hardware-aware CLI for choosing and running local LLMs"
  homepage "https://github.com/shashankswe2020-ux/rigspark"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.2/rigspark-aarch64-apple-darwin.tar.gz"
      sha256 "fee739dab8ae0ac5efef174e578d040ee1ef27aecc3274738185919f521de622"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.2/rigspark-x86_64-apple-darwin.tar.gz"
      sha256 "115fac46252be84b2ef1b922fc541914b5173838d7968694acc8fc19a3f29e10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.2/rigspark-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "69437c3d70da7291c16ad46a67b15aa7c40fa5fb389b839bf19479e61c926049"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.2/rigspark-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "89fbd8387f6335954cdc1b99932272bf8050e9810bb4ab7ee823880b7af5c709"
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
