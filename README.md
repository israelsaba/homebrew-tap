# Homebrew Agentic: Homebrew tap for AI and agentic developer tools

`israelsaba/agentic` is a Homebrew tap for small command-line tools built for AI-assisted and agent-driven software work. Each formula builds from a tagged release of its source repository.

## Formulae

| Formula | What it does | Source |
| --- | --- | --- |
| `overfit` | AI commit message and GitHub pull request generator. Writes Conventional Commits and PR titles and bodies with OpenAI, Gemini, xAI, Anthropic, or a custom OpenAI-compatible model, then commits, pushes, and runs `gh pr create`. | [israelsaba/overfit](https://github.com/israelsaba/overfit) |

## Install

```sh
brew install israelsaba/agentic/overfit
overfit setup
```

That command taps this repository and trusts only the `overfit` formula. In a `Brewfile`:

```ruby
tap "israelsaba/agentic"
brew "israelsaba/agentic/overfit"
```

The repository was previously named `homebrew-tap`. GitHub redirects the old URL, but switch existing installs to the new name:

```sh
brew untap israelsaba/tap
brew install israelsaba/agentic/overfit
```

## Trust

Formulae in a third-party tap run Ruby with your user's privileges during installation. Read [`Formula/overfit.rb`](Formula/overfit.rb) and the source it builds before installing. Each formula pins a release tarball by SHA-256.

## Updates

New release tags in a source repository are picked up by the scheduled `brew bump` workflow, which opens a pull request here. `brew test-bot` runs on macOS and Linux for every pull request.

## Issues

Report formula or installation problems in this repository. Report bugs in a tool itself in its source repository. Include `brew config`, the formula version, and the full command output, and never post API keys.

## Sources

- [Homebrew taps](https://docs.brew.sh/Taps), accessed 2026-11-02.
- [Homebrew tap trust](https://docs.brew.sh/Tap-Trust), accessed 2026-11-02.
- [Formula Cookbook](https://docs.brew.sh/Formula-Cookbook), accessed 2026-11-02.

## License

Each tool keeps the license of its source repository. `overfit` is MIT licensed.
