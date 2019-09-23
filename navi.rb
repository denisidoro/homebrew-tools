class Navi < Formula
  desc "An interactive cheatsheet tool for the command-line"
  homepage "https://github.com/denisidoro/navi"  
  url "https://github.com/denisidoro/navi/archive/v0.8.0.tar.gz"
  sha256 "6e4a09caf52f519096e18364cefed55e89075b5fb1b9f5cdf0f09fa4a4e5d284"

  depends_on "fzf" => :build

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"navi")
  end

end
