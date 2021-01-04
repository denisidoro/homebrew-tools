class Abra < Formula
  version '0.1.0'
  desc "Easily share data between different terminal windows."
  homepage "https://github.com/denisidoro/abra"

  if OS.mac?
      url "https://github.com/denisidoro/abra/releases/download/v#{version}/abra-v#{version}-x86_64-osx.tar.gz"
      sha256 "5f4e974a0d2919737028f63320750867ed8b10b53da2fe3b63890e3bce7609c3"
  elsif OS.linux?
      url "https://github.com/denisidoro/abra/releases/download/v#{version}/abra-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c92572c3be8218d62e117b85c37cc235b161c25a1f0d0af81dde6e7c5b195695"
  end

  def install
    bin.install "abra"
  end

  test do
    assert_match "abra " + version, shell_output("#{bin}/abra --version")
  end
end
