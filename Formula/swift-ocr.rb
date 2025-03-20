class SwiftOcr < Formula
  desc "OCR CLI tool built with Swift"
  homepage "https://github.com/azamara/swift-ocr-cli"
  license "Apache-2.0"
  head "https://github.com/azamara/swift-ocr-cli.git", branch: "main"
  version "1.0.0"
  
  livecheck do
    url :stable
    strategy :github_latest
  end

  on_arm do
    url "https://github.com/azamara/swift-ocr-cli/releases/download/v1.0.0/swift-ocr-cli-arm-mac"
    sha256 "ff46e270279f16abb3f2527cd0db9e928ef63d27806621f4b41a5832e06d7d2c"
  end
  
  on_intel do
    url "https://github.com/azamara/swift-ocr-cli/releases/download/v1.0.0/swift-ocr-cli-intel-mac"
    sha256 "1123700937a755415db2e77691c2d714e0bf4f65713eb064e301d6278376b732"
  end

  def install
    bin.install Dir["*"].first => "swift-ocr"
  end

  test do
    system "#{bin}/swift-ocr", "--version"
  end
end
