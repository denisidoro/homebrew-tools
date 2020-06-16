class Dotfiles < Formula
  desc "Personal dotfiles"
  homepage "https://github.com/denisidoro/dotfiles"
  url "https://github.com/denisidoro/dotfiles/archive/v2019.12.09.tar.gz"
  sha256 "5f7d4bb5b53583f6a333a3eb7939e22f6b070cd298f41acd9ba1404abec669c9"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script(libexec/"bin/dot")
    system("#{libexec}/bin/dot", "self", "install")
  end
end
