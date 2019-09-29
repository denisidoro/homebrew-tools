class Navi < Formula
  desc "An interactive cheatsheet tool for the command-line"
  homepage "https://github.com/denisidoro/navi"
  url "https://github.com/denisidoro/navi/archive/v0.10.3.tar.gz"
  sha256 "30428f26948711a194a29f72ee40dae97ed443959a6b65f8dce1fc56be35cf3e"

  depends_on "fzf" => :build

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"navi")
  end
end
