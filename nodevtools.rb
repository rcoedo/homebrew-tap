require "language/go"

class Nodevtools < Formula
  desc "AppleScript to open chrome devtools for node from a command line interface"
  homepage "https://github.com/rcoedo/chrome-nodevtools"
  url "https://github.com/rcoedo/chrome-nodevtools/archive/0.1.0.tar.gz"
  sha256 "8f17808c6c3b5d80374ada3627ca51ee67142b90ba5da7f62c36ebaf9b3c86c4"
  version "v0.1.0"
  head "https://github.com/rcoedo/chrome-nodevtools.git"

  def install
    bin.install "nodevtools"
  end
end
