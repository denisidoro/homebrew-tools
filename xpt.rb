class Xpt < Formula
  desc "An abstraction over whatever package managers you have installed in your system"
  homepage "https://github.com/denisidoro/navi"
  url "https://github.com/denisidoro/xpt/archive/v0.2.0.tar.gz"
  sha256 "e2b8a980674da73d116e4f3caa878e9d2a3024bb10ec875dbf361f9cc3683ab6"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"xpt")
  end
end
