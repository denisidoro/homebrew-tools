class Navi < Formula
  desc "An interactive cheatsheet tool for the command-line"
  homepage "https://github.com/denisidoro/navi"
  url "https://github.com/denisidoro/navi/archive/v0.14.0.tar.gz"
  sha256 "c3c89dfdeae368e6db12412b2cc78f1104f44c4ba3cb93ce9d4dbd137b94bd76"

  depends_on "fzf" => :build

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"navi")
  end
end
