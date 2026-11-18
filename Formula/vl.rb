class Vl < Formula
  desc "Terminal workbench for browsing code, reviewing diffs, and making quick edits"
  homepage "https://github.com/foursmith/vl"
  version "0.1.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/foursmith/vl/releases/download/v0.1.0/vl_0.1.0_darwin_arm64.tar.gz"
      sha256 "ad89f59d5b1be414496beba860dcd5e060f451aac2113ddf87751affac70e8d9"
    end
    on_intel do
      url "https://github.com/foursmith/vl/releases/download/v0.1.0/vl_0.1.0_darwin_x86_64.tar.gz"
      sha256 "572893555ab59fabec422422e89d65d22603cf55f953db4389fa510b36a2c856"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/foursmith/vl/releases/download/v0.1.0/vl_0.1.0_linux_arm64.tar.gz"
      sha256 "d85b8f1a8001bb345eda3bc4fc5c102c54716d2c51ab8e1529003f1a0b67488d"
    end
    on_intel do
      url "https://github.com/foursmith/vl/releases/download/v0.1.0/vl_0.1.0_linux_x86_64.tar.gz"
      sha256 "856a1b12f14495b64e85450e9ab789ca2fb01ed4640203f95ccdc4346c3e142a"
    end
  end

  def install
    bin.install "vl"
    prefix.install "LICENSE", "THIRD_PARTY_NOTICES.md", "licenses", "third_party"
  end

  test do
    assert_equal "vl #{version}", shell_output("#{bin}/vl -version").strip
  end
end
