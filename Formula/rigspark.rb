class Rigspark < Formula
  desc "Hardware-aware CLI that tells you which local LLMs will run before installing them"
  homepage "https://github.com/shashankswe2020-ux/rigspark"
  version "2.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v2.1.0/rigspark-aarch64-apple-darwin.tar.gz"
      sha256 "0d7c06f07b2ef748da64b2b0184c8041c6756a8de4c898bd2bbdd7bbf77f09e7"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v2.1.0/rigspark-x86_64-apple-darwin.tar.gz"
      sha256 "bbce13dcde772cbd49e7a68329878a6423bd5995838444aa044341054a225362"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v2.1.0/rigspark-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f5a44397d51d9eed6eccb6f85e589058075afa5e9bf1ff44921213214e200d0a"
    end
    on_intel do
      url "https://github.com/shashankswe2020-ux/rigspark/releases/download/v2.1.0/rigspark-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c1ad24a36f2754b8e355e579b1f7949a809ad32436764cd5193808a474335c2f"
    end
  end

  def install
    bin.install "llmup", "rigspark", "rigspark-gui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llmup --version")
  end
end
