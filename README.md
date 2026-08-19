<div align="center">
  <img src="assets/readme-icon.svg" alt="launchdx" width="120" />

  <h1>homebrew-launchdx</h1>

  <p>Install launchdx with Homebrew.</p>

  <p>
    <a href="https://github.com/ChloeVPin/launchdx"><img src="https://img.shields.io/badge/tool-launchdx-lightgrey" alt="launchdx" /></a>
    <a href="LICENSE"><img src="https://img.shields.io/badge/license-MIT-lightgrey" alt="MIT license" /></a>
  </p>
</div>

This repository is the Homebrew tap for [launchdx](https://github.com/ChloeVPin/launchdx), a read-only command that explains why macOS blocked an `.app`, `.dmg`, or `.pkg`.

Homebrew looks up `brew tap ChloeVPin/launchdx` as this repo (`homebrew-launchdx`). That name is required. The tool itself lives in the launchdx repository.

## Install

```bash
brew tap ChloeVPin/launchdx
brew install launchdx
```

Needs macOS 13 or newer and Xcode Command Line Tools. Homebrew builds launchdx from the current GitHub release using the Mac’s Swift compiler.

```bash
launchdx diagnose /Applications/MyApp.app
launchdx diagnose ~/Downloads/MyApp.dmg
launchdx diagnose ~/Downloads/MyApp.pkg --json
launchdx --version
```

Full usage is in the [launchdx README](https://github.com/ChloeVPin/launchdx#use-it) and `man launchdx`.

## Upgrade

```bash
brew update
brew upgrade launchdx
```

## What gets installed

Besides the `launchdx` binary:

| Piece | Location |
| --- | --- |
| bash completion | `$(brew --prefix)/etc/bash_completion.d/launchdx.bash` |
| zsh completion | `$(brew --prefix)/share/zsh/site-functions/_launchdx` |
| fish completion | `$(brew --prefix)/share/fish/vendor_completions.d/launchdx.fish` |
| man page | `$(brew --prefix)/share/man/man1/launchdx.1` |

## If install fails

```bash
brew install launchdx --verbose
```

If Homebrew is using a stale download:

```bash
rm -rf "$(brew --cache)/downloads"
brew install launchdx
```

Maintainers can check the formula with:

```bash
brew audit --strict launchdx
```

## License

MIT. Same terms as launchdx.
