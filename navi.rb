class Navi < Formula
  desc "An interactive cheatsheet tool for the command-line"
  homepage "https://github.com/denisidoro/navi"  
  url "https://github.com/denisidoro/navi/archive/v0.7.0.tar.gz"
  sha256 "5b3bec4af8ebfefd976cf05fc2fed5571acbb86eb6c0576b579f709342adfa07"

  depends_on "fzf" => :build

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"navi")
  end

end
