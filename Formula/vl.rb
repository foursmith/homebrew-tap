class Vl < Formula
  desc "Terminal workbench for browsing code, reviewing diffs, and making quick edits"
  homepage "https://github.com/foursmith/vl"
  version "0.1.3"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/foursmith/vl/releases/download/v0.1.3/vl_0.1.3_darwin_arm64.tar.gz"
      sha256 "6a83349745b279ce71ae9cc1a1f10205219dfe412472b0e1c14c56a2f5f5a677"
    end
    on_intel do
      url "https://github.com/foursmith/vl/releases/download/v0.1.3/vl_0.1.3_darwin_x86_64.tar.gz"
      sha256 "f5285b660cf90026abe22bd057283c952d036364d0811df3bd24a3afa03deeef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/foursmith/vl/releases/download/v0.1.3/vl_0.1.3_linux_arm64.tar.gz"
      sha256 "f937ce7d90992ecb9147e4becf501a65257b8da3a2fe281983cd3ac8e954af88"
    end
    on_intel do
      url "https://github.com/foursmith/vl/releases/download/v0.1.3/vl_0.1.3_linux_x86_64.tar.gz"
      sha256 "3e5a49a0ea3b3a5f71bc0de5def615cd3d780a23788c71ff6515f6b1b5c330d6"
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
