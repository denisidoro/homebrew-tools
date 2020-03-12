class Navi < Formula
  version '2.0.5'
  desc "Interactive cheatsheet tool for the command-line."
  homepage "https://github.com/denisidoro/navi"

  if OS.mac?
      url "https://github.com/denisidoro/navi/releases/download/v#{version}/navi-x86_64-osx.tar.gz"
      sha256 "6da5dd4c1f523dd2fa8763ca1d56685486de1bca696ef54d848e9d649db4fa0c"
  elsif OS.linux?
      url "https://github.com/denisidoro/navi/releases/download/v#{version}/navi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cf9e6ede96aeea3985703328423d0cddf3497731ff8b61be46ff2bb526392423"
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
