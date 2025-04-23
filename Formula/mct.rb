class Mct < Formula
  include Language::Python::Virtualenv

  desc "macOS Configuration Tools"
  homepage "https://github.com/ocolunga/mct"
  url "https://github.com/ocolunga/mct/archive/v0.1.0.tar.gz"
  sha256 "f716c4ae692755ca896a38edb9b5a1c21e6857d6bcf83818544c5f9056096fa3"
  license "MIT"

  depends_on "python@3.12"

  resource "hatchling" do
    url "https://files.pythonhosted.org/packages/d8/a1/7dd1caa87c0b15c04c6291e25112e5d082cce02ee87f221a8be1d594f857/hatchling-1.21.1.tar.gz"
    sha256 "bba440453a224e7d4478457fa2e8d8c3633765bafa02975a6b53b9bf917980bc"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/mct", "--version"
  end
end 