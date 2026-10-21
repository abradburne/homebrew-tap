class Sunscreen < Formula
  desc "Protection from Suno haze: cleans up tracks downloaded from Suno"
  homepage "https://github.com/abradburne/sunscreen"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.3.0/sunscreen-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "d4731759a67f63c03ae75cd7c9c4d2c69888033aa5ee8a73b4f290ee277d5321"
    end
    on_intel do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.3.0/sunscreen-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "bc56804463a5b18b1f0b453a1b6cba2b3d1f2979f250eccace60f8f9dd1d41aa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.3.0/sunscreen-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "590d520bdfcb758f993f4ff05813bce2ed8be5ef5cf826582719147fb76397d7"
    end
    on_intel do
      url "https://github.com/abradburne/sunscreen/releases/download/v0.3.0/sunscreen-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "47f337d4ddbfee1c158ea73760c057db58d8aaacde70248e40c6b42395a48477"
    end
  end

  def install
    bin.install "sunscreen"
  end

  test do
    assert_match "usage", shell_output("#{bin}/sunscreen 2>&1", 2)
  end
end
