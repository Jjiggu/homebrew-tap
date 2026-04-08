cask "claudepet" do
  version "1.0.2"
  sha256 "1cdb5a315ca32adff8362c20b0a311a0c5fad192f85fc5caa41b87d41c71a400"

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
