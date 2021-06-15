class Dex < Formula
  desc "Research language for array processing in the Haskell/ML family"
  head "https://github.com/google-research/dex-lang.git"

  depends_on "haskell-stack" => :build
  depends_on "llvm@9" => :build
  depends_on "libpng"

  def install
    ENV.prepend_path Formula["llvm@9"].opt_bin
    system "make", "install", "PREFIX=#{prefix}"
  end
end
