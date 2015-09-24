require "language/go"

class Apcom < Formula
  desc "Apocalyptic commit messages for the desperate developer"
  homepage "https://github.com/rcoedo/apcom"
  url "https://github.com/rcoedo/apcom/archive/v0.1.2.tar.gz"
  sha256 "4d777ee527eb2a33885fd9f45d5bbc40bf83ad62e88862f005ab1af4ecdf2ea5"
  version "v0.1.2"
  head "https://github.com/rcoedo/apcom.git"

  depends_on "go" => :build

  def install
      mkdir_p buildpath/"src/github.com/rcoedo"
      ln_s buildpath, buildpath/"src/github.com/rcoedo/apcom"

      ENV["GOPATH"] = buildpath
      Language::Go.stage_deps resources, buildpath/"src"

      system "go", "build", "-o", bin/"apcom", "apcom.go"
  end
end
