require "language/go"

class Apcom < Formula
  desc "Apocalyptic commit messages for the desperate developer"
  homepage "https://github.com/rcoedo/apcom"
  url "https://github.com/rcoedo/apcom/archive/v0.1.1.tar.gz"
  sha256 "c129ca40ba5f04c860a7b6802e91c8aea792109bb806d49196c15b5011a594b6"
  version "v0.1.1"
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
