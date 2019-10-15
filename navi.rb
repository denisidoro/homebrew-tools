class Navi < Formula
  desc "An interactive cheatsheet tool for the command-line"
  homepage "https://github.com/denisidoro/navi"
  url "https://github.com/denisidoro/navi/archive/v0.14.1.tar.gz"
  sha256 "4a2604aa6b5f5c1d8eb0c771c5cc96c66658f60234b61e70e605292d6d51650e"

  depends_on "fzf" => :build

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"navi")
  end
end
