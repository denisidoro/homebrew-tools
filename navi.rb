class Navi < Formula
  desc "An interactive cheatsheet tool for the command-line"
  homepage "https://github.com/denisidoro/navi"
  url "https://github.com/denisidoro/navi/archive/v0.12.0.tar.gz"
  sha256 "1709f8ac0286ecf5f85cb8a1fcedd4074a0cdcea24e2246df65815dfd3284b3f"

  depends_on "fzf" => :build

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"navi")
  end
end
