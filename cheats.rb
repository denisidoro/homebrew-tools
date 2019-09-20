# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cheats < Formula
  desc "WIP"
  homepage ""
  url "https://github.com/denisidoro/cheats/archive/v0.2.0.tar.gz"
  sha256 "323570ea77782e61cda61a059a352abfefc02259e7e532dc2f1b96b8cd5aa624"
  # depends_on "cmake" => :build

  def install
    # Move everything under #{libexec}/
    libexec.install Dir["*"]

    # Then write executables under #{bin}/
    bin.write_exec_script (libexec/"cheats")
  end

end
