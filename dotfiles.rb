class Dotfiles < Formula
  desc "Personal dotfiles"
  homepage "https://github.com/denisidoro/dotfiles"
  url "https://github.com/denisidoro/dotfiles/archive/v2019.12.09.tar.gz"
  sha256 "bac7e5a3285c7eba515c81a57ef74975153faa25e5ba659a967a54859b78d834"

  depends_on "fzf"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script(libexec/"bin/dot")
  end
end
