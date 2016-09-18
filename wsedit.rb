class Wsedit < Formula
  desc "A simple terminal source code editor"
  homepage "https://github.com/SirBoonami/wsedit"
  url "https://github.com/SirBoonami/wsedit/archive/v1.1.0.tar.gz"
  version "1.1.0"
  sha256 "e9812a8bf8295a32945403e4f22cad6c1e92a8f85ee221a6b404f279b2ede704"
  head "https://github.com/SirBoonami/wsedit.git"

  depends_on "haskell-stack" => :build

  # FIXME: This corresponds to v1.0.0. Need to update for 1.1.0.
  # bottle do
  #   root_url "https://dl.bintray.com/ararslan/wsedit/"
  #   cellar :any_skip_relocation
  #   sha256 "2915443e111959ca5d7bd5f9e770293522d9ee129fedeb81bb97bf36c5d7751b" => :yosemite
  # end

  def install
    bin.mkpath
    system "stack", "setup"
    system "stack", "install", "--local-bin-path", "#{prefix}/bin"
  end
end
