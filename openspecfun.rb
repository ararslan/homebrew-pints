class Openspecfun < Formula
  desc "Library of Bessel, Airy, and error functions of complex arguments"
  homepage "https://github.com/JuliaLang/openspecfun"
  url "https://github.com/JuliaLang/openspecfun/archive/v0.5.1.tar.gz"
  version "0.5.1"
  sha256 "b83e35feedbd717788866d496189c067a4f9c36b46d93eb7855df7494b1e3d22"
  head "https://github.com/JuliaLang/openspecfun.git"

  option "with-openlibm", "Compile using OpenLibm instead of the system's libm"
  option "with-gcc", "Compile using GCC instead of Clang"

  depends_on "gfortran" => :build
  depends_on "gcc" => :build if "with-gcc"
  depends_on "openlibm" if "with-openlibm"

  def install
    args = []
    args << "USEGCC=1" if build.with? "gcc"
    args << "USE_OPENLIBM=1" if build.with? "openlibm"

    lib.mkpath
    include.mkpath

    system "make", "install", "prefix=.", *args

    lib.install Dir["lib/*"]
    include.install Dir["include/*"]
  end
end
