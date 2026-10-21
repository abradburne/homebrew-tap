class Sunscreen < Formula
  desc "Protection from Suno haze: cleans up tracks downloaded from Suno"
  homepage "https://github.com/abradburne/sunscreen"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.7.0/sunscreen-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "e32aeb483bea8cb10f96c110318f1debefd26f58344fd694ef82d1709224b614"
    end
    on_intel do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.7.0/sunscreen-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "ac48627b9c62cef8410ffae000b400a5a3d32366e5070e94f9b43e9e2a5a9f9f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.7.0/sunscreen-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "312e8140ae5a18831caf5a9cddeda0f200cda51da3da89490ba9b0b43b18be54"
    end
    on_intel do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.7.0/sunscreen-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "58aa26bf02b6007471bf300027a974cdeadd9b331bea04f6741aeaf51354aad9"
    end
  end

  def install
    bin.install "sunscreen"
  end

  test do
    assert_match "usage", shell_output("#{bin}/sunscreen 2>&1", 2)
  end
end
