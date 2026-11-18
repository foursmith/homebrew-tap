class Vl < Formula
  desc "Terminal workbench for browsing code, reviewing diffs, and making quick edits"
  homepage "https://github.com/foursmith/vl"
  version "0.1.1"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/foursmith/vl/releases/download/v0.1.1/vl_0.1.1_darwin_arm64.tar.gz"
      sha256 "25af248e790c2dc250f2e75ec7b0cb47dc95a3969222a9673af2e5e07e742e7e"
    end
    on_intel do
      url "https://github.com/foursmith/vl/releases/download/v0.1.1/vl_0.1.1_darwin_x86_64.tar.gz"
      sha256 "0511c7e5574755e3b4ac33193bdc2619a8be911ff9b354066a5b8620a6c1e1c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/foursmith/vl/releases/download/v0.1.1/vl_0.1.1_linux_arm64.tar.gz"
      sha256 "3eeccac48ab65b9085d9ae567e9138bc300d2cbf617340ba208d3062eb9d98af"
    end
    on_intel do
      url "https://github.com/foursmith/vl/releases/download/v0.1.1/vl_0.1.1_linux_x86_64.tar.gz"
      sha256 "846a894667dfc71a08133ae080e6f06ee1ebb5c139b76a36c1dac6eccced9ab8"
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
