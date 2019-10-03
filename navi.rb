class Navi < Formula
  desc "An interactive cheatsheet tool for the command-line"
  homepage "https://github.com/denisidoro/navi"
  url "https://github.com/denisidoro/navi/archive/v0.11.1.tar.gz"
  sha256 "f7e0cad530fc080997a0d3d8a3ad1b89d8cb8c7aaca2fe78a97d841c997cee5f"

  depends_on "fzf" => :build

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"navi")
  end
end
