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

  resource "typer" do
    url "https://files.pythonhosted.org/packages/8b/6f/3991f0f1c7fcb2df31aef28e0594d8d54b05393a0e4e34c65e475c2a5d41/typer-0.15.2.tar.gz"
    sha256 "ab2fab47533a813c49fe1f16b1a370fd5819099c00b119e0633df65f22144ba5"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/b9/2e/0090cbf739cee7d23781ad4b89a9894a41538e4fcf4c31dcdd705b78eb8b/click-8.1.8.tar.gz"
    sha256 "ed53c9d8990d83c2a27deae68e4ee337473f6330c040a31d4225c9574d16096a"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"mct", "--help"
  end
end 