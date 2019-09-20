class Navi < Formula
  desc "An interactive cheatsheet tool for the command-line"
  homepage "https://github.com/denisidoro/navi"
  url "https://github.com/denisidoro/navi/archive/v0.4.0.tar.gz"
  sha256 "76c676e147b90d41209a6e913f2d67ecb631a5a520d77e23df76a228c95cb5e4"
  
  depends_on "fzf" => :build

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"navi")
  end

end
