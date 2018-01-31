class Wsedit < Formula
  desc "Simple terminal source code editor"
  homepage "https://github.com/LadyBoonami/wsedit"
  url "https://github.com/LadyBoonami/wsedit/archive/v1.2.2.tar.gz"
  sha256 "3fc1e291adb01e1e37746cc6d2232f2d389c0e92ff6dfcca134d10385033ee06"
  head "https://github.com/LadyBoonami/wsedit.git"

  option "without-language-files", "Do not install language highlighting definition files"

  depends_on "haskell-stack" => :build

  def install
    bin.mkpath
    system "stack", "setup"
    system "stack", "install", "--local-bin-path", bin
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
