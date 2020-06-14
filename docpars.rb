class Docpars < Formula
  version '0.2.0'
  desc "Ultra-fast parser for declarative command-line options for your shell scripts."
  homepage "https://github.com/denisidoro/docpars"

  if OS.mac?
      url "https://github.com/denisidoro/docpars/releases/download/v#{version}/docpars-v#{version}-x86_64-osx.tar.gz"
      sha256 "7ac1d09d27dc3f77e443aee1b7655454b61d2338074e5d17ce7efc9b70c957fc"
  elsif OS.linux?
      url "https://github.com/denisidoro/docpars/releases/download/v#{version}/docpars-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "df175d527bf05247666506d9a4e53f8250ec84336545fbe654de91f8d739944d"
  end

  def install
    bin.install "docpars"
  end

  test do
    assert_match "docpars " + version, shell_output("#{bin}/docpars --version")
  end
end
