class Wsedit < Formula
  desc "Simple terminal source code editor"
  homepage "https://github.com/LadyBoonami/wsedit"
  url "https://github.com/LadyBoonami/wsedit/archive/v1.2.5.tar.gz"
  sha256 "6047f086cc11c625c9fc142e611b0280ec703dbb8ab8690494429c1f4105ae3b"
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
