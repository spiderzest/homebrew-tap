cask "pimsalab" do
  version "0.1.0"

  on_arm do
    url "https://github.com/spiderzest/pimsalab/releases/download/v#{version}/PimSalab_#{version}_aarch64.dmg"
    sha256 "bf6a2e2b483b6c5964ed4aa938251e269ac957d17f411e30040b52e41c7ecd3d"
  end

  on_intel do
    url "https://github.com/spiderzest/pimsalab/releases/download/v#{version}/PimSalab_#{version}_x64.dmg"
    sha256 "2ad72877649e8911bf1c1de7d3671fb9ba88fa3a38ba317c607e4f907fbeb4b8"
  end

  name "PimSalab"
  desc "Thai-English keyboard language auto-correction tool"
  homepage "https://spiderzest.github.io/pimsalab/"

  app "PimSalab.app"

  zap trash: [
    "~/Library/Application Support/com.pimsalab.desktop",
    "~/Library/Caches/com.pimsalab.desktop",
    "~/Library/Preferences/com.pimsalab.desktop.plist",
    "~/Library/Saved Application State/com.pimsalab.desktop.savedState",
  ]
end
