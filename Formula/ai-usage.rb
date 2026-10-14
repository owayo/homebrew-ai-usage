class AiUsage < Formula
  desc "Show Claude, Codex, Antigravity, PixelLab, and Grok usage limits"
  homepage "https://github.com/owayo/ai-usage"
  license "MIT"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/ai-usage/releases/download/v26.10.100/ai-usage-aarch64-apple-darwin.tar.gz"
      sha256 "6f1e6ac2a47ab82e3fe719aed1b684ba7dce4fa34d5b6576f50f29cf2cf59f97"
    else
      url "https://github.com/owayo/ai-usage/releases/download/v26.10.100/ai-usage-x86_64-apple-darwin.tar.gz"
      sha256 "5c1fb143eaecc906f08a2f24398aafaad829e29bc7cca72a48e2a1499e2f223e"
    end
  end

  def install
    bin.install "ai-usage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-usage --version")
  end
end
