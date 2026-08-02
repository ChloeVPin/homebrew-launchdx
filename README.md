# homebrew-launchdx

Homebrew tap for [launchdx](https://github.com/ChloeVPin/launchdx), a read only macOS application launch diagnosis CLI for Apple Silicon.

## Install

```bash
brew tap ChloeVPin/launchdx
brew install launchdx
```

## Usage

```bash
launchdx diagnose /Applications/MyApp.app
launchdx diagnose /Applications/MyApp.app --json
launchdx evidence /Applications/MyApp.app
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
