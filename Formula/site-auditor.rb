class SiteAuditor < Formula
  include Language::Python::Virtualenv

  desc "Lightweight website health checker: SEO, performance and broken links from your terminal"
  homepage "https://github.com/danyblitz-bit/site-auditor"
  url "https://files.pythonhosted.org/packages/e3/57/3c31e9f7cc31a7bce33e496ba761db0317605fbd3201d1f46f3c8fbeb231/danyblitz_site_auditor-1.0.0.tar.gz"
  sha256 "469c7b63997e94316a6c757f9c614fd60aea2f74526b6ab04a47a03a1d02321e"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"siteauditor", "--help"
  end
end

