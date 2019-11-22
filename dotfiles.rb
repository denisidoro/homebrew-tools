class Dotfiles < Formula
  desc "Personal dotfiles"
  homepage "https://github.com/denisidoro/dotfiles"
  url "https://github.com/denisidoro/dotfiles/archive/v20191121.tar.gz"
  sha256 "02a7ac0c0ecb3ca411c4aaa93aa848aae1534270243aa6c4e56f14d289603f03"

  depends_on "fzf"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script(libexec/"bin/dot")
  end
end
