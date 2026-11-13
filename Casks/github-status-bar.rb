cask "github-status-bar" do
  version "0.0.2"
  sha256 "facea2813e5f29e6447866ac4952ebaafda31840267516f132ed5f93fa5720b2"

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
