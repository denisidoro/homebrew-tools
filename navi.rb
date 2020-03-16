class Navi < Formula
  version '2.1.3'
  desc "Interactive cheatsheet tool for the command-line."
  homepage "https://github.com/denisidoro/navi"

  if OS.mac?
      url "https://github.com/denisidoro/navi/releases/download/v#{version}/navi-v#{version}-x86_64-osx.tar.gz"
      sha256 "6638766f47829d72cb1f71c2560d0728c81bd80bb7d553146a5e3cea58f39b6f"
  elsif OS.linux?
      url "https://github.com/denisidoro/navi/releases/download/v#{version}/navi-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "92372322f255fbe7cc87294755486c0caaaa20a5aff79107a5aacff3d68234a0"
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
