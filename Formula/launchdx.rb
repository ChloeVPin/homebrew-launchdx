class Launchdx < Formula
  desc "Find out exactly why macOS blocked your app"
  homepage "https://github.com/ChloeVPin/launchdx"
  url "https://github.com/ChloeVPin/launchdx/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "ee81952c495e2aede6f5ea896c96dd4c9f546dda6f1adcb34b4435f21518759e"
  license "MIT"

  depends_on macos: :ventura
  uses_from_macos "swift" => :build

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox", "--scratch-path", ".build"
    bin.install ".build/release/launchdx"
    bash_completion.install "completions/launchdx.bash"
    zsh_completion.install "completions/_launchdx"
    fish_completion.install "completions/launchdx.fish"
    man1.install "man/launchdx.1"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/launchdx --help")
  end
end
