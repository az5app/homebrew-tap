class VsActiveClaude < Formula
  desc "A Go CLI tool that modifies VS Code Copilot extension modifications."
  homepage "https://github.com/az5app/vs-active-claude-public"
  license "Apache-2.0"
  head "https://github.com/az5app/vs-active-claude-public.git", branch: "main"
  version "1.0.0"
  
  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/az5app/vs-active-claude-public/releases/download/v1.0.0/vs-active-claude_1.0.0_darwin_arm64"
      sha256 "cb3148a152b477915e932db95364fd7f07e910ce9acf23794fcbd4bcfb7b7d99"
    end
    
    on_intel do
      url "https://github.com/az5app/vs-active-claude-public/releases/download/v1.0.0/vs-active-claude_1.0.0_darwin_amd64"
      sha256 "7ed09a402487be96b6e264c221d118d220edbd7e1ef9082271cdfd37cb15265f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/az5app/vs-active-claude-public/releases/download/v1.0.0/vs-active-claude_1.0.0_linux_arm64"
      sha256 "4cb375aad180c200c7d4a0b4c149e6fc95639f3131d5aba66dd841dc486b2013"
    end
    
    on_intel do
      url "https://github.com/az5app/vs-active-claude-public/releases/download/v1.0.0/vs-active-claude_1.0.0_linux_amd64"
      sha256 "f7eebac0c75a94f4865087a640b924fd52fde82804bcc32e5b24373c3df790a0"
    end
  end

  def install
    binary_name = "vs-active-claude"
    bin.install Dir["*"].first => binary_name
  end

  test do
    system "#{bin}/vs-active-claude", "--version"
  end
end
