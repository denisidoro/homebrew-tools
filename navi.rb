class Navi < Formula
  homepage "https://github.com/denisidoro/navi"
  sha256 :no_check
  head "https://github.com/denisidoro/navi.git", :branch => "master"

  depends_on "navi"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"navi")
  end
end
