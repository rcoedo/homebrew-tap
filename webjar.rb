class Webjar < Formula
  desc "package assets as a webjar"
  homepage "https://github.com/rcoedo/webjar"
  url "https://github.com/rcoedo/webjar/archive/v0.1.0.tar.gz"
  sha256 "6ac590a48f4b73893260198a2ce7c331849b90b49a10197e2b70276aeaf6fa3f"
  version "v0.1.0"
  head "https://github.com/rcoedo/webjar.git"

  def install
    bin.install "webjar"
  end
end
