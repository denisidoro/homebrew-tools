class Navi < Formula
  desc "An interactive cheatsheet tool for the command-line"
  homepage "https://github.com/denisidoro/navi"  
  url "https://github.com/denisidoro/navi/archive/v0.6.0.tar.gz"
  sha256 "8ebbf70c55f35edfc63b70b1bf539e701de69e7fbcd30445e2f1ba327ea0fdde"
  
  depends_on "fzf" => :build

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"navi")
  end

end
