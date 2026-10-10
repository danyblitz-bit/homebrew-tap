class IssueGate < Formula
  include Language::Python::Virtualenv

  desc "Enforce a reproduction step on GitHub issue forms"
  homepage "https://github.com/danyblitz-bit/issue-gate"
  url "https://files.pythonhosted.org/packages/92/30/bdc6c84d5c1ae2b1d9d0e54585da692e2a0e184ca47c186ca54742cccd75/issue_gate-1.0.0.tar.gz"
  sha256 "f4074b1eeecf64717b8ff240b216e69ef28bef9682ae4491afbd1bea4361fb21"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"issuegate", "--help"
  end
end

