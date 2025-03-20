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
    sha256 "559eb5c86d66c5c460af51809cceca1cd8571d5c5b4750aa9d96c1075e20c30c"
  end
  
  on_intel do
    url "https://github.com/azamara/swift-ocr-cli/releases/download/v1.0.0/swift-ocr-cli-intel-mac"
    sha256 "be29647dfc6a868bc80e2b95de7963e6d89a794ad99217df277a8ce2b518c026"
  end

  def install
    bin.install Dir["*"].first => "swift-ocr"
  end

  test do
    system "#{bin}/swift-ocr", "--version"
  end
end
