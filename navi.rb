class Navi < Formula
  version '2.0.11'
  desc "Interactive cheatsheet tool for the command-line."
  homepage "https://github.com/denisidoro/navi"

  if OS.mac?
      url "https://github.com/denisidoro/navi/releases/download/v#{version}/navi-x86_64-osx.tar.gz"
      sha256 "3c6e9ca5461d49efeed9662f326a2868da20d6e0b3fe639dc55a22230a96b07e"
  elsif OS.linux?
      url "https://github.com/denisidoro/navi/releases/download/v#{version}/navi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "27df4c57f6ba2f12bfb1a1fe06cdb272990d11dc74a4e8de79d23a62fb884509"
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
