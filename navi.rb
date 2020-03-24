class Navi < Formula
  version '2.4.1'
  desc "Interactive cheatsheet tool for the command-line."
  homepage "https://github.com/denisidoro/navi"

  if OS.mac?
      url "https://github.com/denisidoro/navi/releases/download/v#{version}/navi-v#{version}-x86_64-osx.tar.gz"
      sha256 "86f8212969f762bbefd7cf629eb396d3ede8e86290a05bc68d04d5441304e74a"
  elsif OS.linux?
      url "https://github.com/denisidoro/navi/releases/download/v#{version}/navi-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d8a24c4de5bb42f8755ee6eb774667507560819c38a1bf01f5cdcec1852186b7"
  end

  depends_on "fzf"

  def install
    bin.install "navi"
  end

  test do
    assert_match "navi " + version, shell_output("#{bin}/navi --version")
    (testpath/"cheats/test.cheat").write "% test\n\n# foo\necho bar\n\n# lorem\necho ipsum\n"
    assert_match "bar", shell_output("export RUST_BACKTRACE=1; #{bin}/navi --path #{testpath}/cheats best foo")
  end
end
