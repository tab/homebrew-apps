class Fuku < Formula
  desc "Lightweight CLI orchestrator for running and managing multiple local services"
  homepage "https://github.com/tab/fuku"
  license "MIT"
  version "0.15.3"

  on_macos do
    on_arm do
      url "https://github.com/tab/fuku/releases/download/v#{version}/fuku_v#{version}_macos_arm64.tar.gz"
      sha256 "a05feb63843afe5d6cfa11c0864a4a04f0720be01c4a9577351a1e345cb3652b"
    end

    on_intel do
      url "https://github.com/tab/fuku/releases/download/v#{version}/fuku_v#{version}_macos_x86_64.tar.gz"
      sha256 "5c55e1ca6a6e73b7e1fa6a28291c37505388a35b024a6ac2747253d5469d087d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tab/fuku/releases/download/v#{version}/fuku_v#{version}_linux_arm64.tar.gz"
      sha256 "887e5c993d4d1c721ba965792032902c858850c5dbdf32414a5369fce11a7344"
    end

    on_intel do
      url "https://github.com/tab/fuku/releases/download/v#{version}/fuku_v#{version}_linux_x86_64.tar.gz"
      sha256 "02a2089a0fab9edbed71b8790145c87cc16cac8526ef1c9c5f28373554fafd60"
    end
  end

  def install
    bin.install "fuku"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fuku version")
  end
end
