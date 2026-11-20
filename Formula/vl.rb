class Vl < Formula
  desc "Terminal workbench for browsing code, reviewing diffs, and making quick edits"
  homepage "https://github.com/foursmith/vl"
  version "0.1.4"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/foursmith/vl/releases/download/v0.1.4/vl_0.1.4_darwin_arm64.tar.gz"
      sha256 "e9dc8fd97c34eb4ef6c0499f09c674d2381ff9f8cad1caa59ae0372de7123ed0"
    end
    on_intel do
      url "https://github.com/foursmith/vl/releases/download/v0.1.4/vl_0.1.4_darwin_x86_64.tar.gz"
      sha256 "c9b9fa77b299d4185e37e5bf338e37043db49702b8d31152b49fc37b377cd010"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/foursmith/vl/releases/download/v0.1.4/vl_0.1.4_linux_arm64.tar.gz"
      sha256 "fc5f3c44554b91000198b441db4f1e8286053bf01426dfc8fa88bdbc4e5f880f"
    end
    on_intel do
      url "https://github.com/foursmith/vl/releases/download/v0.1.4/vl_0.1.4_linux_x86_64.tar.gz"
      sha256 "e39a1789c4e549a68393059354f21d74d2a17743be9fb32c7adff90237868407"
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
