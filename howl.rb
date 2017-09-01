class Howl < Formula
  desc "A general purpose, fast and lightweight editor"
  homepage "https://howl.io"
  url "https://github.com/howl-editor/howl/releases/download/0.5.1/howl-0.5.1.tgz"
  version "0.5.1"
  sha256 "a714f1252dc6878fa640291e8ed36a336f8d00bce7ca7aab64e65ab04c56201c"
  head "https://github.com/howl-editor/howl.git"

  depends_on "gtk+3"
  depends_on "librsvg"
  depends_on "wget" => :build if build.head?

  def install
    cd "src" do
      system "make", "PREFIX=#{prefix}", "install"
      bin.install "howl"
    end
  end

  def caveats
    <<-EOS.undent
      Howl is primarily targeting Linux at the moment, so there may be issues on OS X that
      haven't yet made it on the developers' radar. Homebrew installation issues can be
      reported at https://github.com/ararslan/homebrew-pints but all other Howl issues
      should be reported at https://github.com/howl-editor/howl.
    EOS
  end
end
