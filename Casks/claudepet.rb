cask "claudepet" do
  version "1.0.1"
  sha256 "4fbd77bc0b9369c187ed525b396fb26b383feca5bf6bc33e0bd79a0e6fe9e0c1"

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
