class Sparsepp < Formula
  desc "A fast, memory efficient hash map for C++"
  homepage "https://github.com/greg7mdp/sparsepp"
  head "https://github.com/greg7mdp/sparsepp.git"

  def install
    include.mkdir
    include.install Dir["*.h"]
  end
end
