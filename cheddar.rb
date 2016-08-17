class Cheddar < Formula
  desc "The Cheddar programming language"
  homepage "http://cheddar.vihan.org"
  url "https://github.com/cheddar-lang/Cheddar/archive/v1.0.0-beta.45.tar.gz"
  sha256 "6865314e2d9e37898c3e047146d032841b12e90da159681b18f2304e09062c53"
  version "1.0.0-beta.45"
  head "https://github.com/cheddar-lang/Cheddar.git"

  depends_on "node"
  depends_on "npm"

  def install
    bin.mkpath
    system "npm install"
    bin.install "dist/cli/cheddar"
  end
end
