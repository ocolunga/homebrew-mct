class Mct < Formula
  include Language::Python::Virtualenv

  desc "macOS Configuration Tools"
  homepage "https://github.com/ocolunga/mct"
  url "https://github.com/ocolunga/mct/archive/v0.1.0.tar.gz"
  sha256 "f716c4ae692755ca896a38edb9b5a1c21e6857d6bcf83818544c5f9056096fa3"
  license "MIT"

  depends_on "python@3.12"  # Using latest Python since your requirement is >=3.8

  resource "hatchling" do
    url "https://files.pythonhosted.org/packages/d8/a1/7dd1caa87c0b15c04c6291e25112e5d082cce02ee87f221a8be1d594f857/hatchling-1.21.1.tar.gz"
    sha256 "bba440453a224e7d4478457fa2e8d8c3633765bafa02975a6b53b9bf917980bc"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/5b/49/39f10d0f75886439ab3dac889f14f8ad511982a754e382c9b6ca895b29e9/typer-0.9.0.tar.gz"
    sha256 "50922fd79aea2f4751a8e0408ff10d2662bd0c8bbfa84755a699f3bada2978b2"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"mct", "--version"
  end
end 