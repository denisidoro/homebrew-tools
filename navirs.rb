class Navirs < Formula
  version '2.0.2'
  desc "An interactive cheatsheet tool for the command-line."
  homepage "https://github.com/denisidoro/navi"

  if OS.mac?
      url "https://github.com/denisidoro/navi/releases/download/v#{version}/navi-macos-amd64.tar.gz"
      sha256 "58c7b28f13c2b709cd816561e8c5f9614b360757c81004803c784769afc97854"
  elsif OS.linux?
      url "https://github.com/denisidoro/navi/releases/download/v#{version}/navi-linux-amd64.tar.gz"
      sha256 "4ceed78bcf700d4178b99d6ec2f92856be062f5fa1ca4d359bc5f29f0c362d46"
  end

  conflicts_with "navi", :because => "both install `navi` binaries"

  def install
    bin.install "navi"
    # man1.install "doc/rg.1"

    # bash_completion.install "complete/rg.bash"
    # fish_completion.install "complete/rg.fish"
    # zsh_completion.install "complete/_rg"
  end
end