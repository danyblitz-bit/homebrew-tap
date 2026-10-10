class PhotoMetaclean < Formula
  include Language::Python::Virtualenv

  desc "Strip EXIF and GPS metadata from JPEG and PNG, at the byte level"
  homepage "https://github.com/danyblitz-bit/photo-metaclean"
  url "https://files.pythonhosted.org/packages/48/9f/fe898cbf64ca8245dad882a3502a5da51b881ba0694e7913409504bd4bab/photo_metaclean-1.1.0.tar.gz"
  sha256 "a33fe018d5599911ebb66e45e4da93c13d3e25fc7ce41cb951346ec1839c27b2"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"photometaclean", "--help"
  end
end

