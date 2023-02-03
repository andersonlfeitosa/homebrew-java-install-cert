# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class JavaInstallCert < Formula
  desc ""
  homepage "https://github.com/andersonlfeitosa/java-install-cert"
  url "https://raw.githubusercontent.com/andersonlfeitosa/homebrew-java-install-cert/master/java-install-cert-dist.zip"
  version "1.0"
  sha256 "c7ebe7774052dd1e45b99bda8ba280bb234109fb7f33e445d1424519903bb7c9"
  license ""

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    inreplace "brew/java-install-cert", "##PREFIX##", "#{prefix}"
    prefix.install "java-install-cert.jar"
    bin.install "brew/java-install-cert"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test java-install-cert`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    #system "false"
  end
end