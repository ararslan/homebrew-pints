class RmathJulia < Formula
  desc "The standalone Rmath library patched to use the dSFMT RNG"
  homepage "https://github.com/JuliaLang/Rmath-julia"
  url "https://github.com/JuliaLang/Rmath-julia/archive/v0.1.tar.gz"
  version "0.1"
  sha256 "8ba59378273dea999f956cecf37d47723682f3a46b55ce76ec36a0ffdbe6c8f7"
  head "https://github.com/JuliaLang/Rmath-julia.git"

  bottle do
    root_url "http://dl.bintray.com/ararslan/Rmath-julia/"
    sha256 "cefe653e0229dccc1cdfcba7fde3563ede7741006362fbb65ae4b87cdc4030fc" => :yosemite
  end

  unless build.bottle?
    option "with-clang", "Compile using Clang instead of GCC"
    depends_on :gcc => :build unless "with-clang"
  end

  def install
    lib.mkdir

    if build.bottle?
      lib.install "libRmath-julia.dylib"
    else
      args = []
      args << "USECLANG=1" if build.with? "clang"

      system "make", *args
      lib.install Dir["src/libRmath-julia.dylib"]
    end
  end
end
