class Tznow < Formula
  desc "A small Rust script to display time from various zones"
  homepage "https://github.com/itsmykairos/tznow"
  version "1.0.0"
  license "MIT"  # Change to your license

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itsmykairos/tznow/releases/download/v1.0.0/tznow-aarch64-apple-darwin.tar.gz"
      sha256 "6e13f131841b036684bba18e812dd754eca387795e90bad048c0ebe9c39369f0"
    else
      url "https://github.com/itsmykairos/tznow/releases/download/v1.0.0/tznow-x86_64-apple-darwin.tar.gz"
      sha256 "5144c111ba0e16b0d3a18ab2724df512f9cdc85d3888052f80c9e8253a711e8c"
    end
  end

  def install
    bin.install "tznow"
  end

  test do
    system "#{bin}/tznow", "--version"
  end
end