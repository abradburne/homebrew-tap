class Sunscreen < Formula
  desc "Protection from Suno haze: cleans up tracks downloaded from Suno"
  homepage "https://github.com/abradburne/sunscreen"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.4.0/sunscreen-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "98940e2e2e2f2e5ca3b26210b22eee25bfa16f1409a4d7fc494b207759ab031c"
    end
    on_intel do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.4.0/sunscreen-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "52f964ea27ba1f46f3cca72baa1c7fe51fe894422b5220fa453dc742f100424c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.4.0/sunscreen-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "11d4e89625939f4880e62620af19e55a4a83df6f30d75ee155f6981dd3477caf"
    end
    on_intel do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.4.0/sunscreen-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d146f52fa71730e37577c423d6c5e94738ba73922195c435c8ec0d1318457c59"
    end
  end

  def install
    bin.install "sunscreen"
  end

  test do
    assert_match "usage", shell_output("#{bin}/sunscreen 2>&1", 2)
  end
end
