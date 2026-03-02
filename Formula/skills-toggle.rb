class SkillsToggle < Formula
  desc "TUI tool for enabling/disabling Claude Code skills"
  homepage "https://github.com/BUNotesAI/skills-toggle"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/BUNotesAI/skills-toggle/releases/download/v1.0.1/skills-toggle-darwin-arm64.tar.gz"
      sha256 "89700890ddfd9ad26856c394542a7a3099eff219baf36bead3aafde8bc54ae16"
    elsif Hardware::CPU.intel?
      url "https://github.com/BUNotesAI/skills-toggle/releases/download/v1.0.1/skills-toggle-darwin-amd64.tar.gz"
      sha256 "e968e2a1393da2a914dca03aa6db00671faba082d3f92d611075902cd7810ad8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/BUNotesAI/skills-toggle/releases/download/v1.0.1/skills-toggle-linux-arm64.tar.gz"
      sha256 "597d67856aecc9e35b61d54785a6de3a83d9bb6a9af54a8765a796254884872a"
    elsif Hardware::CPU.intel?
      url "https://github.com/BUNotesAI/skills-toggle/releases/download/v1.0.1/skills-toggle-linux-amd64.tar.gz"
      sha256 "ba9967668e164beb835d0ddb36b516477ffaa157f6930e472a01807af2b8821b"
    end
  end

  def install
    bin.install "skills-toggle"
  end

  test do
    assert_match "skills-toggle", shell_output("#{bin}/skills-toggle --help")
  end
end
