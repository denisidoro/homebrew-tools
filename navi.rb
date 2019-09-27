class Navi < Formula
  desc "An interactive cheatsheet tool for the command-line"
  homepage "https://github.com/denisidoro/navi"  
  url "https://github.com/denisidoro/navi/archive/v0.10.0.tar.gz"
  sha256 "a9f901eb1bb896f3931a13ebb4b63d71ee538da17f2837d069526192934c21e4"

  depends_on "fzf" => :build

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"navi")
  end
end
