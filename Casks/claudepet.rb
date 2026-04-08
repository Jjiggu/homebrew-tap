cask "claudepet" do
  version "1.0.1"
  sha256 "0ea088b19feaa06cecec0b01025c2affafa17879351787c8de547e7457791b71"

  url "https://github.com/Jjiggu/ClaudePet/releases/download/v#{version}/ClaudePet-#{version}.dmg"
  name "ClaudePet"
  desc "macOS menu bar app that monitors Claude Pro/Max token usage with an animated pet"
  homepage "https://github.com/Jjiggu/ClaudePet"

  app "ClaudePet.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-d", "com.apple.quarantine", "#{appdir}/ClaudePet.app"],
      sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.hoon.ClaudePet.plist",
    "~/Library/Saved Application State/com.hoon.ClaudePet.savedState",
  ]
end
