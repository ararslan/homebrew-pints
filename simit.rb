class Simit < Formula
  desc "A language for computing on sparse systems"
  homepage "http://simit-lang.org"
  # url
  # version
  # sha256
  head "https://github.com/simit-lang/simit.git"

  depends_on "cmake" => :build
  depends_on "llvm" => :build
  depends_on "eigen" => :recommended

  def install
    ENV["LLVM_CONFIG"] = Formula["llvm"].bin/"llvm-config"

    bin.mkpath
    lib.mkpath

    mkdir "build" do
      system "cmake", "-D", "CMAKE_BUILD_TYPE:STRING=\"Release\"", ".."
      system "make"
    end

    bin.install Dir["build/bin/*"]
    lib.install Dir["build/lib/*"]

    ENV.delete("LLVM_CONFIG")
  end
end
