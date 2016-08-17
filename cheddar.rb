class Cheddar < Formula
  desc "The Cheddar programming language"
  homepage "http://cheddar.vihan.org"
  url "https://github.com/cheddar-lang/Cheddar/archive/v1.0.0-beta.45.tar.gz"
  version "1.0.0-beta.45"
  head "https://github.com/cheddar-lang/Cheddar.git"

  depends_on "node"

  def install
    bin.mkpath
    system "npm", "install"
    bin.install "dist/cli/cheddar"
  end
end
