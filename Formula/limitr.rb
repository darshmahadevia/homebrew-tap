class Limitr < Formula
  desc "Local-first view of current Codex rate limits"
  homepage "https://github.com/darshmahadevia/limitr"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/darshmahadevia/limitr/releases/download/v0.1.1/limitr-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "2dc8de78d5f77698bdb063c5ae0758c3ccd95f740d9d3a2104fc94cda0ae5c45"
    else
      url "https://github.com/darshmahadevia/limitr/releases/download/v0.1.1/limitr-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "e63b0a66837d008a69c49d53243aeb6d0535e378c6118ecce1fd33eb11bc3095"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/darshmahadevia/limitr/releases/download/v0.1.1/limitr-v0.1.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "59687945d8ee65b168fff4a2a68a829c27614eacbd992ba5b04baadd8a6d5a39"
    else
      url "https://github.com/darshmahadevia/limitr/releases/download/v0.1.1/limitr-v0.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a982f51f1e5b2a5f41787084781166ba65c1d4a7bb2ca44881dd8a2cdb351802"
    end
  end

  def install
    bin.install "limitr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/limitr --version")
  end
end
