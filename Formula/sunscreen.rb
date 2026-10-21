class Sunscreen < Formula
  desc "Protection from Suno haze: cleans up tracks downloaded from Suno"
  homepage "https://github.com/abradburne/sunscreen"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.5.0/sunscreen-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "d73daeec23ac3e3afc296431bccb140075e8fbe8f8377bedfef26a985f64f86f"
    end
    on_intel do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.5.0/sunscreen-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "cdda940887e2b5521d0fd3cf89bf511284c8acd5bd1463a40c5d73d3b7bb6022"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.5.0/sunscreen-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d4826adca1c23f5dc77dcaf4382a349b61e8992844f663dfdb1d4c4714e4f099"
    end
    on_intel do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.5.0/sunscreen-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f80bea35e95e777ccb8025e4dd730473be53a7a3aac5d51de24fc453109ae748"
    end
  end

  def install
    bin.install "sunscreen"
  end

  test do
    assert_match "usage", shell_output("#{bin}/sunscreen 2>&1", 2)
  end
end
