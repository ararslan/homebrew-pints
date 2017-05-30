class Wsedit < Formula
  desc "A simple terminal source code editor"
  homepage "https://github.com/SirBoonami/wsedit"
  url "https://github.com/SirBoonami/wsedit/archive/v1.2.1.tar.gz"
  version "1.2.1"
  sha256 "b15a1e469553852e269ba15582616ccb89758d587cff2ddbcd370546a9e7b225"
  head "https://github.com/SirBoonami/wsedit.git"

  depends_on "haskell-stack" => :build

  # FIXME: This corresponds to v1.0.0. Need to update for 1.2.0.
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
