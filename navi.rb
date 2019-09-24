class Navi < Formula
  desc "An interactive cheatsheet tool for the command-line"
  homepage "https://github.com/denisidoro/navi"  
  url "https://github.com/denisidoro/navi/archive/v0.9.2.tar.gz"
  sha256 "373a9c9df65a787e45c0f049c8dda60f5a6e7488a41fb6da808f0d3d38f2e0c8"

  depends_on "fzf" => :build

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"navi")
  end
end
