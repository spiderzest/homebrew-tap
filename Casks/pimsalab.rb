cask "pimsalab" do
  version "0.1.0"

  on_arm do
    url "https://github.com/spiderzest/pimsalab/releases/download/v#{version}/PimSalab_#{version}_aarch64.dmg"
    sha256 "f40b458a003bf3f1f4062b07e94b55913731357c34e19973041ee22e4d4890c1"
  end

  on_intel do
    url "https://github.com/spiderzest/pimsalab/releases/download/v#{version}/PimSalab_#{version}_x64.dmg"
    sha256 "39523a88a271b0da9701b6a40519818402605f2a1acee936893f48102435806c"
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
