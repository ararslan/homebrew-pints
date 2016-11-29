class Dred < Formula
  desc "A fast, ultra lightweight text editor"
  homepage "http://dred.io"
  head "https://github.com/dr-soft/dred.git"

  depends_on "gtk+3"
  depends_on "glib"

  def install
    bin.mkdir
    system "cc", "source/dred/dred_main.c",
           "-o", bin/"dred",
           "-lm", "-ldl",
           *(`pkg-config --cflags --libs gtk+-3.0`.chomp.split)
  end
end
