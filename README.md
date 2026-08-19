<div align="center">
  <img src="assets/readme-icon.svg" alt="homebrew-launchdx" width="120" />

  <h1>homebrew-launchdx</h1>

  <p>Homebrew tap for launchdx, a read-only macOS launch diagnosis CLI.</p>

  <p>
    <a href="LICENSE"><img src="https://img.shields.io/badge/license-MIT-lightgrey" alt="MIT license" /></a>
  </p>
</div>

## Install

```bash
brew tap ChloeVPin/launchdx
brew install launchdx
```

## Usage

```bash
launchdx diagnose /Applications/MyApp.app
launchdx diagnose ~/Downloads/MyApp.dmg
launchdx diagnose ~/Downloads/MyApp.pkg --json
launchdx evidence /Applications/MyApp.app
launchdx --version
```

## Completions and man page

The formula installs bash, zsh, and fish completions plus the man page automatically.

1. bash completion at `$(brew --prefix)/etc/bash_completion.d/launchdx.bash`
2. zsh completion at `$(brew --prefix)/share/zsh/site-functions/_launchdx`
3. fish completion at `$(brew --prefix)/share/fish/vendor_completions.d/launchdx.fish`
4. man page at `$(brew --prefix)/share/man/man1/launchdx.1`

Read the man page with:

```bash
man launchdx
```

## Upgrade

```bash
brew update
brew upgrade launchdx
```

## Build notes

The formula builds the CLI from the tagged source archive with the system Swift toolchain:

```text
swift build -c release --disable-sandbox --scratch-path .build
```

macOS 13 or newer is required. Xcode Command Line Tools must be installed because the formula uses the macOS Swift compiler.

## Audit

```bash
brew audit --strict launchdx
```

## Troubleshooting

If installation fails, run with verbose output:

```bash
brew install launchdx --verbose
```

If the bottle cache has stale source, clear it:

```bash
rm -rf "$(brew --cache)/downloads"
brew install launchdx
```

## License

MIT
