class Dotfiles < Formula
  desc "Personal dotfiles"
  homepage "https://github.com/denisidoro/dotfiles"
  url "https://github.com/denisidoro/dotfiles/archive/v2020.08.03.tar.gz"
  sha256 "c98d8dfcc1b39110496b1005aa509178aef8033cf9f45db03e2bf4de18d76fb2"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script(libexec/"bin/dot")
  end
end
