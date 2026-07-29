class Limitr < Formula
  desc "Local-first view of current Codex rate limits"
  homepage "https://github.com/darshmahadevia/limitr"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/darshmahadevia/limitr/releases/download/v0.1.0/limitr-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "560edf6071cf40011e78a7e1ca11f713f2ae36afe8ab9a2eb1a9e121353b4426"
    else
      url "https://github.com/darshmahadevia/limitr/releases/download/v0.1.0/limitr-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "15740cbc0229f6548cd7f6b897f4f6c8544ef27629ba8878ccf1927b9c694500"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/darshmahadevia/limitr/releases/download/v0.1.0/limitr-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8ac7609adb91e03335325924afecb407a8509fecb23d5f70df0a7aa7a8fca41c"
    else
      url "https://github.com/darshmahadevia/limitr/releases/download/v0.1.0/limitr-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "22af5fbbeca1de34be39c4cddde406b76149084dce5666555d58bdce6bfc2644"
    end
  end

  def install
    bin.install "limitr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/limitr --version")
  end
end
