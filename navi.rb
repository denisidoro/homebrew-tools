class Navi < Formula
  version '2.0.4'
  desc "Interactive cheatsheet tool for the command-line."
  homepage "https://github.com/denisidoro/navi"

  if OS.mac?
      url "https://github.com/denisidoro/navi/releases/download/v#{version}/navi-x86_64-osx.tar.gz"
      sha256 "4d8d802574c1892355c8d7e79b92eb4ed79c4e40f828f3d834218fa5f476e3d4"
  elsif OS.linux?
      url "https://github.com/denisidoro/navi/releases/download/v#{version}/navi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "06895d88ddc144ec3d55fc80340b4fd68446697c513e5a4d68f8bff05965247c"
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
