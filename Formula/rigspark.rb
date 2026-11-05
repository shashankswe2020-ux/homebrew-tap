class Rigspark < Formula
  desc "Hardware-aware CLI for choosing and running local LLMs"
  homepage "https://github.com/shashankswe2020-ux/rigspark"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.7/rigspark-aarch64-apple-darwin.tar.gz"
      sha256 "d1f5a7aa950d7238341928f05ada8381f3ae4f824a8f8dece40389ca7d5f2d13"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.7/rigspark-x86_64-apple-darwin.tar.gz"
      sha256 "0e0c13214b3cf724f251580dbe853563016661a1101dece87cbc84a00c8527ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.7/rigspark-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b0847012bd2653fd9ce4140080aa0bf72cd4083d850ff1c1639e1685d12b9081"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v3.0.7/rigspark-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0067cfb8d297e4b8e62bdbe80d085dd723ede5d36601e1434bf876b642b72444"
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
