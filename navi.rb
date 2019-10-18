class Navi < Formula
  desc "An interactive cheatsheet tool for the command-line"
  homepage "https://github.com/denisidoro/navi"
  url "https://github.com/denisidoro/navi/archive/v0.14.2.tar.gz"
  sha256 "1e16b8ff440882a2dd8e73bdb55c2b88724b3f0f9844c602ae9fe74f509d0dfb"

  depends_on "fzf" => :build

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"navi")
  end
end
