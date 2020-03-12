class Navi < Formula
  version '2.0.6'
  desc "Interactive cheatsheet tool for the command-line."
  homepage "https://github.com/denisidoro/navi"

  if OS.mac?
      url "https://github.com/denisidoro/navi/releases/download/v#{version}/navi-x86_64-osx.tar.gz"
      sha256 "e88bda2db1bd1cc0ea4c2e5438f85828486d57ee0934ece2cf85ab4c3557d4b5"
  elsif OS.linux?
      url "https://github.com/denisidoro/navi/releases/download/v#{version}/navi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c4018b19fc4622612d22a0566c483007aa5438e81d0909105b85b7fe8ac5ffeb"
  end

  depends_on "fzf"

  def install
    (libexec/"cheats").install Dir["cheats/*"]
    (libexec/"shell").install Dir["shell/*"]
    bin.install "navi"
  end

  test do
    assert_match "navi " + version, shell_output("#{bin}/navi --version")
    (testpath/"cheats/test.cheat").write "% test\n\n# foo\necho bar\n\n# lorem\necho ipsum\n"
    assert_match "bar", shell_output("export RUST_BACKTRACE=1; #{bin}/navi --path #{testpath}/cheats best foo")
  end
end
