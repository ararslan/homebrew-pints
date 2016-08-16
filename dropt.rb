class Dropt < Formula
  desc "Yet another C library for parsing command line options"
  homepage "https://github.com/jamesderlin/dropt"
  url "https://github.com/jamesderlin/dropt/archive/v1.1.1.tar.gz"
  version "1.1.1"
  sha256 "d9e551c0bf7ab70d68b78d511f2937da937a414c306db4d1d4012f268f3bbdfc"
  head "https://github.com/jamesderlin/dropt.git"

  option "with-gcc", "Compile using GCC instead of Clang"
  depends_on "gcc" => :build if "with-gcc"

  def install
    ext = build.with?("gcc") ? "gcc" : "clang"
    lib.mkpath
    system "make", "-f", "Makefile.#{ext}", "default", "BUILD_ROOT=."
    lib.install Dir["lib/*"]
  end
end
