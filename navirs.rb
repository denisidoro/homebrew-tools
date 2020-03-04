class Navirs < Formula
  version '2.0.0'
  desc "Interactive cheatsheet tool for the command-line."
  homepage "https://github.com/denisidoro/navi"

  if OS.mac?
      url "https://github.com/denisidoro/navi/releases/download/v#{version}/navi-x86_64-osx.tar.gz"
      sha256 "fbaa842936a1d82e48f4417d1571f8e0f58d50dfa76d20b50283fbd9d62efc97"
  elsif OS.linux?
      url "https://github.com/denisidoro/navi/releases/download/v#{version}/navi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0d1b7b83ed12177e1f506f8e4bd9ac7f8e113bc3f977416ac8703d912fb13593"
  end

  depends_on "fzf"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"navi")
  end
  
  test do
    assert_equal "navi " + version, shell_output("#{bin}/navi --version")
  end  
end
