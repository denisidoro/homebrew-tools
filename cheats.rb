# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cheats < Formula
  desc "WIP"
  homepage ""
  url "https://github.com/denisidoro/cheats/archive/v0.1.0.tar.gz"
  sha256 "917393316e42fe41e02eb2666c9c11d178669d0e3bb0dae592db4e5c023ffb90"
  # depends_on "cmake" => :build

  def install
    # Move everything under #{libexec}/
    libexec.install Dir["*"]

    # Then write executables under #{bin}/
    bin.write_exec_script (libexec/"src/cheats")
  end

end
