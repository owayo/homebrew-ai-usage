class AiUsage < Formula
  desc "Show Claude, Codex, Antigravity, PixelLab, and Grok usage limits"
  homepage "https://github.com/owayo/ai-usage"
  license "MIT"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/ai-usage/releases/download/v26.9.100/ai-usage-aarch64-apple-darwin.tar.gz"
      sha256 "ef674e85d8de250378f2755295ce8e112b9e7592303cef8daceeeb785cea37de"
    else
      url "https://github.com/owayo/ai-usage/releases/download/v26.9.100/ai-usage-x86_64-apple-darwin.tar.gz"
      sha256 "5a8249a8832be2a804045ccb96611171a0f0cbf8ec8df58aa00cd9b9b0326895"
    end
  end

  def install
    bin.install "ai-usage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-usage --version")
  end
end
