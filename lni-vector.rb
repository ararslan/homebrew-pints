class LniVector < Formula
  desc "A supercharged std::vector implementation for C++"
  homepage "https://github.com/lnishan/vector"
  url "https://github.com/lnishan/vector/archive/v1.1.tar.gz"
  version "1.1"
  sha256 "ed7542179b120110bbed66198f0ba1fbc9dbba27de2cf98b7fe706d51e39f20c"
  head "https://github.com/lnishan/vector.git"

  def install
    include.mkpath
    (include/"lni").mkpath
    (include/"lni").install "vector.hpp"
  end

  def caveats
    <<-EOS.undent
      The examples given on the project's homepage use #include "vector.hpp".
      However, this formula installs the header file such that it must be called
      as #include "lni/vector.hpp". This avoids any potential conflicts with
      other installed headers that may happen to be called vector.
    EOS
  end
end
