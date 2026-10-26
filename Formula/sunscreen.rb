class Sunscreen < Formula
  desc "Protection from Suno haze: cleans up tracks downloaded from Suno"
  homepage "https://github.com/abradburne/sunscreen"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.8.0/sunscreen-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "237157ab065c3933017262e5ac5d74a58afd54a7416c3e9a8ea16548601aa07f"
    end
    on_intel do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.8.0/sunscreen-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "c9bacd3212867baf08d1b4bfe338110ef23d854115c02d8815880cd53a741b9d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.8.0/sunscreen-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6b2feac57986dbae4329584adb49e8588443fa9bb3df02caeb068673dcb6a300"
    end
    on_intel do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.8.0/sunscreen-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "460066c4749c236ecc883032ecc31b1d6d8755278b95c74ab53ea50e5070018a"
    end
  end

  def install
    bin.install "sunscreen"
  end

  test do
    assert_match "usage", shell_output("#{bin}/sunscreen 2>&1", 2)
  end
end
