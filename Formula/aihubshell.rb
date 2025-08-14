class Aihubshell < Formula
  desc "AIHub Korea API command-line interface for downloading AI datasets"
  homepage "https://github.com/az5app/aihubshell-kr"
  url "https://github.com/az5app/aihubshell-kr/releases/download/v0.5/aihubshell-v0.5.tar.gz"
  sha256 "e5882c636fb29d3a47f85e7ffcce0e83275b910ea66e0035b76cb07b2c40f0b9"
  license "MIT"
  version "0.5"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "curl"
  depends_on "bash"

  def install
    bin.install "aihubshell"
  end

  def caveats
    <<~EOS
      To use aihubshell, you need to set your AIHub API key:
        export AIHUB_APIKEY="your-api-key-here"

      Or provide it as a parameter:
        aihubshell -aihubapikey "your-api-key" -mode l

      For more information, run:
        aihubshell -help
    EOS
  end

  test do
    assert_match "aihubshell version", shell_output("#{bin}/aihubshell -help 2>&1", 1)
  end
end