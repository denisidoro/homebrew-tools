class Navirs < Formula
  version '2.0.5'
  desc "An interactive cheatsheet tool for the command-line."
  homepage "https://github.com/denisidoro/navi"

  if OS.mac?
      url "https://github.com/denisidoro/navi/releases/download/v#{version}/navi-macos-amd64.tar.gz"
      sha256 "577aed8017d431595089da16a0424c7fb2b001c799d9e5aa28700d0202ec47fa"
  elsif OS.linux?
      url "https://github.com/denisidoro/navi/releases/download/v#{version}/navi-linux-amd64.tar.gz"
      sha256 "537e72771b970bf21828897abb51ece9af4a7d419bd916c55a9d601a465ccfd1"
  end

  conflicts_with "navi", :because => "both install `navi` binaries"
  depends_on "fzf"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"navi")
    # man1.install "doc/rg.1"

    # bash_completion.install "complete/rg.bash"
    # fish_completion.install "complete/rg.fish"
    # zsh_completion.install "complete/_rg"
  end
end
