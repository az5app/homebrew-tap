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
    sha256 "6d0771d2b610c391a96210c7f17c90834b3707b3d989929a02c4e4320a168011"
  end
  
  on_intel do
    url "https://github.com/azamara/swift-ocr-cli/releases/download/v1.0.0/swift-ocr-cli-intel-mac"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  def install
    bin.install Dir["*"].first => "swift-ocr"
  end

  test do
    system "#{bin}/swift-ocr", "--version"
  end
end
