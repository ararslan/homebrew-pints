class Howl < Formula
  desc "A general purpose, fast and lightweight editor"
  homepage "https://howl.io"
  url "https://github.com/howl-editor/howl/releases/download/0.4/howl-0.4.tgz"
  version "0.4"
  sha256 "25075b12ba0138afa1cb694c52dd756b35a5350fe3b30132fbcacd137db3adb3"
  head "https://github.com/howl-editor/howl.git"

  depends_on :x11 => :build
  depends_on "gtk+3"
  depends_on "wget" => :build if build.head?

  def install
    cd "src" do
      system "make", "PREFIX=#{prefix}", "install"
      bin.install "howl"
    end
  end
end
