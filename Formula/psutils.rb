# This file was generated by GoReleaser. DO NOT EDIT.
class Psutils < Formula
  desc "Helper for common task."
  homepage "https://github.com/psmarcin/psutils/"
  version "1.0.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/psmarcin/psutils/releases/download/v1.0.0/psutils_1.0.0_Darwin_x86_64.tar.gz"
    sha256 "c52e885ad1bdbb9a0f4fe1036abf79bd5703f1913c1c39e196bbc70ae12e6d31"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/psmarcin/psutils/releases/download/v1.0.0/psutils_1.0.0_Linux_x86_64.tar.gz"
    sha256 "8e0c3dab66aa6b39ae0f4a8a34341ecc12396fb0f3bc77d795a14fed1434fdf8"
  end

  def install
    bin.install "psutils"
  end

  def caveats; <<~EOS
    psutils --help for usage information
  EOS
  end

  test do
    system "#{bin}/psutils --version"
  end
end
