class AiUsage < Formula
  desc "Unified Claude + Codex + Antigravity usage limits across Chrome profiles"
  homepage "https://github.com/owayo/ai-usage"
  url "https://github.com/owayo/ai-usage/archive/refs/tags/v26.7.100.tar.gz"
  sha256 "846d85020084b2ff72d3fe75a65d025c7621049ea514a4b8fad39a32e9deec29"
  license "GPL-3.0-only"

  bottle do
    root_url "https://github.com/owayo/ai-usage/releases/download/v26.7.100"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "a934fac8c9e75d3e823e216e17043e7059cfca9999cdf02adb30b3d21b51ce6b"
    sha256 cellar: :any_skip_relocation, sonoma: "5098328a513cfe8f1f85588a91bd81b9826e9dc7c3ccc9f1fce1b7eb1bcc8c5e"
  end

  depends_on "cmake" => :build
  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/ai-usage", "--version"
  end
end
