class Xpt < Formula
  desc "An abstraction over whatever package managers you have installed in your system"
  homepage "https://github.com/denisidoro/navi"
  url "https://github.com/denisidoro/xpt/archive/v0.1.0.tar.gz"
  sha256 "180fdcd4eea23a9b05f327c93da489627dc35a44f4e323c854dc043487f67e39"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"xpt")
  end
end
