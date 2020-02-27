class Navirs < Formula
  version '2.0.4'
  desc "An interactive cheatsheet tool for the command-line."
  homepage "https://github.com/denisidoro/navi"

  if OS.mac?
      url "https://github.com/denisidoro/navi/releases/download/v#{version}/navi-macos-amd64.tar.gz"
      sha256 "19e3acde66d30a9d936932aef2e8c371718cec230fc3783c49dbc661e56d451d"
  elsif OS.linux?
      url "https://github.com/denisidoro/navi/releases/download/v#{version}/navi-linux-amd64.tar.gz"
      sha256 "854bda3c6a26edc41351b58976a98417cd75bec4f91262de0e15ccc637802a7b"
  end

  conflicts_with "navi", :because => "both install `navi` binaries"
  depends_on "fzf"

  def install
    bin.install "navi"
    # man1.install "doc/rg.1"

    # bash_completion.install "complete/rg.bash"
    # fish_completion.install "complete/rg.fish"
    # zsh_completion.install "complete/_rg"
  end
end