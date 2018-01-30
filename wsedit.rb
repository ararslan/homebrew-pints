class Wsedit < Formula
  desc "A simple terminal source code editor"
  homepage "https://github.com/LadyBoonami/wsedit"
  url "https://github.com/LadyBoonami/wsedit/archive/v1.2.2.tar.gz"
  version "1.2.2"
  sha256 "561f0af9d0b914df8fb0c814a37339020051ee18df07c2de218b4fa48653a8ef"
  head "https://github.com/LadyBoonami/wsedit.git"

  depends_on "haskell-stack" => :build

  option "without-language-files", "Do not install language highlighting definition files"

  def install
    bin.mkpath
    system "stack", "setup"
    system "stack", "install", "--local-bin-path", "#{prefix}/bin"
    unless build.without? "language-files"
      langdir = etc/"wsedit/lang/default"
      langdir.mkpath
      langdir.install Dir["lang/*.wsconf"]
    end
  end

  test do
    assert_match(/^Wyvernscale +Source +Code +Editor/, shell_output("#{bin}/wsed -hv"))
  end
end
