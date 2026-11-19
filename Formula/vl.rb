class Vl < Formula
  desc "Terminal workbench for browsing code, reviewing diffs, and making quick edits"
  homepage "https://github.com/foursmith/vl"
  version "0.1.2"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/foursmith/vl/releases/download/v0.1.2/vl_0.1.2_darwin_arm64.tar.gz"
      sha256 "268145ea67b7ea5fa1fab11a07921fd5044a6958d140ef880da208bb3c71939b"
    end
    on_intel do
      url "https://github.com/foursmith/vl/releases/download/v0.1.2/vl_0.1.2_darwin_x86_64.tar.gz"
      sha256 "d7fc621a7227f57ee5c7aa37a252ebb4992b1e6b49128c7fff81d8faec806110"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/foursmith/vl/releases/download/v0.1.2/vl_0.1.2_linux_arm64.tar.gz"
      sha256 "0c7a7dcb6bce57a2c5fc55a706ac4a7671528d3c797cfc8cb4ff6f706d6b0906"
    end
    on_intel do
      url "https://github.com/foursmith/vl/releases/download/v0.1.2/vl_0.1.2_linux_x86_64.tar.gz"
      sha256 "d8f92642ebceb0526187bcafcc29b7d431cefed5a34051dede1c5312a4075bb4"
    end
  end

  def install
    bin.install "vl"
    prefix.install "LICENSE", "THIRD_PARTY_NOTICES.md", "licenses", "third_party"
  end

  test do
    assert_equal "vl #{version}", shell_output("#{bin}/vl --version").strip
  end
end
