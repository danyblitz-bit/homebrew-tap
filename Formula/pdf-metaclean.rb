class PdfMetaclean < Formula
  include Language::Python::Virtualenv

  desc "Audit and strip hidden metadata (Info and XMP) from PDFs, at the byte level"
  homepage "https://github.com/danyblitz-bit/pdf-metaclean"
  url "https://files.pythonhosted.org/packages/e2/71/125834f2bf8953c48e6e338dcd71ec3e95c441c71a6d036741a48f1b7b3e/pdf_metaclean-1.0.1.tar.gz"
  sha256 "2868835af80c749f938fff5fce2be7470c68e1667f820918a059dff014b78dc4"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"pdfmetaclean", "--help"
  end
end

