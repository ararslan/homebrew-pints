class Howl < Formula
  desc "A general purpose, fast and lightweight editor"
  homepage "https://howl.io"
  url "https://github.com/howl-editor/howl/releases/download/0.4/howl-0.4.tgz"
  version "0.4"
  sha256 "25075b12ba0138afa1cb694c52dd756b35a5350fe3b30132fbcacd137db3adb3"
  head "https://github.com/howl-editor/howl.git"

  depends_on "gtk+3"
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
