class SkillsToggle < Formula
  desc "TUI tool for enabling/disabling Claude Code skills"
  homepage "https://github.com/BUNotesAI/skills-toggle"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/BUNotesAI/skills-toggle/releases/download/v1.0.0/skills-toggle-darwin-arm64.tar.gz"
      sha256 "d217173327cc0ff2b06044801dc64089fd6f2be4c99c31b926b4558adde93892"
    end
  end

  def install
    bin.install "skills-toggle"
  end

  test do
    assert_match "skills-toggle", shell_output("#{bin}/skills-toggle --help")
  end
end
