class Orgtangle < Formula
  desc "org-babel-tangle-file for the command line"
  homepage "https://github.com/rcoedo/orgtangle"
  url "https://github.com/rcoedo/orgtangle/archive/v0.1.0.tar.gz"
  sha256 "7d8073dee41c6ba364e532460af2cf4a96320aaac596215ab4fbfb8122a2cbef"
  version "v0.1.0"
  head "https://github.com/rcoedo/orgtangle.git"

  depends_on "emacs"

  def install
    bin.install "orgtangle"
  end
end
