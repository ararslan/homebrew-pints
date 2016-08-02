class Wsedit < Formula
  desc "A simple terminal source code editor"
  homepage "https://github.com/SirBoonami/wsedit"
  url "https://github.com/SirBoonami/wsedit/archive/v1.0.0.tar.gz"
  version "1.0.0"
  sha256 "db8c8ce5588fc76c2d7ef5a9a9e264d7a3e2fdd37d4ef21be7cc98ccad5b4f79"
  head "https://github.com/SirBoonami/wsedit.git"

  depends_on "haskell-stack" => :build

  def install
    bin.mkpath
    system "stack", "setup"
    system "stack", "install", "--local-bin-path", "#{prefix}/bin"
  end
end
