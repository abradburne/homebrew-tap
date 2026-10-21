class Sunscreen < Formula
  desc "Protection from Suno haze: cleans up tracks downloaded from Suno"
  homepage "https://github.com/abradburne/sunscreen"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.2.0/sunscreen-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "617851965ba522e6857206972e2b3315460a65322c4df4ce52c9552101bd1dfd"
    end
    on_intel do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.2.0/sunscreen-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "ac61d59945daa1d5f978896249868739f0d021456a12d7dd12eafa92021d0c08"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.2.0/sunscreen-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "65209d6d82bc1340ee4995e8c80dee904b5c4d47db05de7cb2e9db2afdd4d425"
    end
    on_intel do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.2.0/sunscreen-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c1725e3f4411c4f7f1069f11f5028b77478b3781e7017ad2856eb71784267e8f"
    end
  end

  def install
    bin.install "sunscreen"
  end

  test do
    assert_match "usage", shell_output("#{bin}/sunscreen 2>&1", 2)
  end
end
