class Navi < Formula
  version '2.2.0'
  desc "Interactive cheatsheet tool for the command-line."
  homepage "https://github.com/denisidoro/navi"

  if OS.mac?
      url "https://github.com/denisidoro/navi/releases/download/v#{version}/navi-v#{version}-x86_64-osx.tar.gz"
      sha256 "c24067ad40a299f9e437b76418bf7ea13d7ed108233811a4e6d62fea03638a99"
  elsif OS.linux?
      url "https://github.com/denisidoro/navi/releases/download/v#{version}/navi-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "adb78616a4f826f88e2a3cb9b87d9238a0a6709e0dd827992fc7f362e64da697"
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
