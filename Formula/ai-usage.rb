class AiUsage < Formula
  desc "Show Claude, Codex, Antigravity, PixelLab, and Grok usage limits"
  homepage "https://github.com/owayo/ai-usage"
  license "MIT"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/ai-usage/releases/download/v26.10.101/ai-usage-aarch64-apple-darwin.tar.gz"
      sha256 "0c0050acffb371d04199adce8519e21ba13ca3b4d334f7ec77c071cf8be7e26d"
    else
      url "https://github.com/owayo/ai-usage/releases/download/v26.10.101/ai-usage-x86_64-apple-darwin.tar.gz"
      sha256 "f42ec1faaacc95b1e9c8ba95c3db07e0f94b88831b8455232ac70e1e5a31b067"
    end
  end

  def install
    bin.install "ai-usage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-usage --version")
  end
end
