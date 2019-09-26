class NaviNightly < Formula
  desc "An interactive cheatsheet tool for the command-line"
  homepage "https://github.com/denisidoro/navi"
  sha256 :no_check
  head "https://github.com/denisidoro/navi.git", :branch => "dev"

  depends_on "fzf" => :build

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"navi")
  end
end
