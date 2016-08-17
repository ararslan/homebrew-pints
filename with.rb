class With < Formula
  desc "Command prefixing for continuous workflow using a single tool"
  homepage "https://github.com/mchav/with"
  head "https://github.com/mchav/with.git"

  def install
    bin.mkdir
    bin.install "with"
  end
end
