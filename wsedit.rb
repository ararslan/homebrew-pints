class Wsedit < Formula
  desc "A simple terminal source code editor"
  homepage "https://github.com/SirBoonami/wsedit"
  url "https://github.com/SirBoonami/wsedit/archive/v0.3.1.tar.gz"
  version "0.3.1"
  sha256 "f5a557e5c120b9879575fc2c98031ece84fb4bb8e2e47da72d4ddbab6ad1cbe5"
  head "https://github.com/SirBoonami/wsedit.git"

  depends_on "haskell-stack" => :build

  def install
    bin.mkpath
    system "stack", "setup"
    system "stack", "install", "--local-bin-path", "#{prefix}/bin"
    bin.install "wsedit"
  end
end
