cask "github-status-bar" do
  version "0.0.1"
  sha256 "006da3f0527d4fc0734ea34cf00c91c15589b0a1ad8a29887555d4dd30503f04"

  url "https://github.com/leereilly/github-status-bar/releases/download/v#{version}/GitHubStatusBar.app.zip"
  name "GitHub Status Bar"
  desc "Native macOS menu bar app that monitors GitHub's service status"
  homepage "https://github.com/leereilly/github-status-bar"

  depends_on macos: ">= :ventura"

  app "GitHubStatusBar.app"

  zap trash: [
    "~/Library/Preferences/com.leereilly.GitHubStatusBar.plist",
  ]
end