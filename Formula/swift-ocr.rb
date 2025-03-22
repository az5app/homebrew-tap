class SwiftOcr < Formula
  desc "OCR CLI tool built with Swift"
  homepage "https://github.com/az5app/swift-ocr-cli"
  license "Apache-2.0"
  head "https://github.com/az5app/swift-ocr-cli.git", branch: "main"
  version "1.0.0"
  
  livecheck do
    url :stable
    strategy :github_latest
  end

  on_arm do
    url "https://github.com/az5app/swift-ocr-cli/releases/download/v1.0.1/swift-ocr-cli-arm-mac"
    sha256 "0704a3bbc8364a38265ab8d68ad69b2654f63ac2825dd3df5b82a1a62881b004"
  end
  
  on_intel do
    url "https://github.com/az5app/swift-ocr-cli/releases/download/v1.0.1/swift-ocr-cli-intel-mac"
    sha256 "1d97ee5eef2d341cc844cec973aec73ce0ff28e620ba95486b85193a60bcdd14"
  end

  def install
    bin.install Dir["*"].first => "swift-ocr"
  end

  test do
    system "#{bin}/swift-ocr", "--version"
  end
end
