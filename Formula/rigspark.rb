class Rigspark < Formula
  desc "Hardware-aware CLI for choosing and running local LLMs"
  homepage "https://github.com/shashankswe2020-ux/rigspark"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.0/rigspark-aarch64-apple-darwin.tar.gz"
      sha256 "913b4bbf116752947b522b3be49260b37d8f640b813b24d1b7f65c43d1c0538c"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.0/rigspark-x86_64-apple-darwin.tar.gz"
      sha256 "76b5cd0b3d51ed5cac991102aa41f335ee331d4a8150aced184e0f56660de97d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.0/rigspark-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6c14cbdb4caaf9a62bf454cc990f5cf54a1467f41eec638902974c0a1f56f892"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.0/rigspark-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8d6ed97fa02a7f4e9420bb9abbac3758cdc0899c4c36884a117f28393c1da566"
    end
  end

  def install
    bin.install "llmup", "rigspark", "rigspark-gui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llmup --version")
  end
end
