cask "claudepet" do
  version "1.0.0"
  sha256 "392f8fffca79f3dd807ff0a402ec11df020b0aa3bec23e6c5f6c9ac3d7a2f5bb"

  url "https://github.com/Jjiggu/ClaudePet/releases/download/v#{version}/ClaudePet-#{version}.dmg"
  name "ClaudePet"
  desc "macOS menu bar app that monitors Claude Pro/Max token usage with an animated pet"
  homepage "https://github.com/Jjiggu/ClaudePet"

  app "ClaudePet.app"

  zap trash: [
    "~/Library/Preferences/com.hoon.ClaudePet.plist",
    "~/Library/Saved Application State/com.hoon.ClaudePet.savedState",
  ]
end
