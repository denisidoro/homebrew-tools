class Navi < Formula
  desc "An interactive cheatsheet tool for the command-line"
  homepage "https://github.com/denisidoro/navi"  
  url "https://github.com/denisidoro/navi/archive/v0.9.3.tar.gz"
  sha256 "252ee19fce9d4a8c9ca7efa783eec639fa5bc84c178795516a1924a2d099e177"

  depends_on "fzf" => :build

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"navi")
  end
end
