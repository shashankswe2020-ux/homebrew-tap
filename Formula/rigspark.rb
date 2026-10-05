class Rigspark < Formula
  desc "Hardware-aware CLI for choosing and running local LLMs"
  homepage "https://github.com/shashankswe2020-ux/rigspark"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v2.3.0/rigspark-aarch64-apple-darwin.tar.gz"
      sha256 "3e21ce338f0d3efc2e652297d748a991e2ccad1da60fd3a4ce2a2a65dab2d253"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v2.3.0/rigspark-x86_64-apple-darwin.tar.gz"
      sha256 "2aac349d399e03c219ac413b44c04ddbb1beb81933844499bb5895ccf56512f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v2.3.0/rigspark-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bed611a9441222cece0978343825ee80cd95a202aed54cd0297c43ee3d1341f2"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v2.3.0/rigspark-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "26169933c8fafb05f6943f3de6d43cc8789cdcd511ecd5ec53e8e40e0c250b6c"
    end
  end

  def install
    bin.install "llmup", "rigspark", "rigspark-gui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llmup --version")
  end
end
