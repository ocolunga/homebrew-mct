class Mct < Formula
  desc "macOS Configuration Tools"
  homepage "https://github.com/ocolunga/mct"
  url "https://github.com/ocolunga/mct/archive/v0.1.0.tar.gz"
  sha256 "f716c4ae692755ca896a38edb9b5a1c21e6857d6bcf83818544c5f9056096fa3"
  license "MIT"

  depends_on "python@3.12"

  def install
    system "python3", "-m", "pip", "install", *std_pip_args, "."
  end

  test do
    system "#{bin}/mct", "--version"
  end
end 