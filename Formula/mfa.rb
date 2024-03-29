# This file was generated by GoReleaser. DO NOT EDIT.
class Mfa < Formula
  desc "mfa is a two-factor authentication agent."
  homepage "https://github.com/unionpos/mfa"
  version "1.1.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/UnionPOS/mfa/releases/download/v1.1.1/mfa_1.1.1_Darwin_x86_64.tar.gz"
    sha256 "80016cbb420bfac89a694fc97a078d13eb9f73a8e3a9538ac0bd3d3c44a2a076"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/UnionPOS/mfa/releases/download/v1.1.1/mfa_1.1.1_Linux_x86_64.tar.gz"
      sha256 "60a1e54ffab0014621722940eedfeeaf9fe9398d2c241c79204270b595fa54eb"
    end
  end

  def install
    bin.install "mfa"
  end

  test do
    system "#{bin}/mfa -list"
  end
end
