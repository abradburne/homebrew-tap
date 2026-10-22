class Sunscreen < Formula
  desc "Protection from Suno haze: cleans up tracks downloaded from Suno"
  homepage "https://github.com/abradburne/sunscreen"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.7.1/sunscreen-v0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "722cce2a0104e345d808e407fc7fa36e3e26fe2c74fb1bda097d4a1a539dd3fa"
    end
    on_intel do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.7.1/sunscreen-v0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "c277a15375b28741a5d11369d7d92b773ea1d526e7dc7231a0ad08d74838284a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.7.1/sunscreen-v0.7.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1bbd3c2317f9068dacd6084307260fe03cbe953dfdf782e276828d9447bf72a4"
    end
    on_intel do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.7.1/sunscreen-v0.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b638b4b8f4347d7ce3186365acfc15b3ef28c3c046ce6ca36f4f9dc75553551d"
    end
  end

  def install
    bin.install "sunscreen"
  end

  test do
    assert_match "usage", shell_output("#{bin}/sunscreen 2>&1", 2)
  end
end
