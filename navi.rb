class Navi < Formula
  desc "An interactive cheatsheet tool for the command-line"
  homepage "https://github.com/denisidoro/navi"  
  url "https://github.com/denisidoro/navi/archive/v0.10.1.tar.gz"
  sha256 "c6ac7c5dd9a60ad2f2cd7d42bb271ede72dded92b9f0a4aabb39535f8e6a594d"

  depends_on "fzf" => :build

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"navi")
  end
end
