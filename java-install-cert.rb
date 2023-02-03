require "formula"

class JavaInstallCert < Formula
  homepage "https://github.com/andersonlfeitosa/java-install-cert"
  url "https://raw.githubusercontent.com/andersonlfeitosa/homebrew-java-install-cert/master/java-install-cert-dist.zip"
  sha256 "20b34f02a2f5dfa5a3984bdf3ea2cef2b1771b2a0ebcdf414241bac205473357"

  def install
    inreplace "brew/java-install-cert", "##PREFIX##", "#{prefix}"
    prefix.install "java-install-cert.jar"
    bin.install "brew/java-install-cert"
  end
end