class Openlibm < Formula
  desc "High quality, system independent, portable, open source libm implementation"
  homepage "http://www.openlibm.org"
  url "https://github.com/JuliaLang/openlibm/archive/v0.5.1.tar.gz"
  version "0.5.1"
  sha256 "782a77497071cc450af176bbfebb34834334f6a17de842fe75cd407bbee89f85"
  head "https://github.com/JuliaLang/openlibm.git"

  def install
    lib.mkpath
    (lib/"pkgconfig").mkpath
    include.mkpath

    system "make", "install", "prefix=."

    lib.install Dir["lib/*"]
    include.install Dir["include/*"]
  end
end
