class Launchdx < Formula
  desc "Find out exactly why macOS blocked your app"
  homepage "https://github.com/ChloeVPin/launchdx"
  url "https://github.com/ChloeVPin/launchdx/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "47ad07be8dc24e0e7209e465f6dc5435c6a9983d994ef076dbeb15cd87b3c207"
  license "MIT"

  depends_on macos: :ventura
  uses_from_macos "swift" => :build

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox", "--scratch-path", ".build"
    bin.install ".build/release/launchdx"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/launchdx --help")
  end
end
