class Sunscreen < Formula
  desc "Protection from Suno haze: cleans up tracks downloaded from Suno"
  homepage "https://github.com/abradburne/sunscreen"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.6.0/sunscreen-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "5c5c33d8779bc4727dc294f67b0f10ce32e4c2bed052e6c0d581bc3b4cdf9c85"
    end
    on_intel do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.6.0/sunscreen-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "d870570e5588ab0989fa067b2f73a65dfb75ab73bc0119ddffbdfa6896324223"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.6.0/sunscreen-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d42da8c056ac2f3cc24dbfa98896a72b55ec08f2245c1e775c81727fcfa5ffd6"
    end
    on_intel do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.6.0/sunscreen-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a60ddfbf6751a6f810ab5c529bf3af8d3e738ccf51ebd2172dc338f8bb7a7ad"
    end
  end

  def install
    bin.install "sunscreen"
  end

  test do
    assert_match "usage", shell_output("#{bin}/sunscreen 2>&1", 2)
  end
end
