# overfit-homebrew: Homebrew tap for the Overfit AI commit and pull request CLI

This repository is the Homebrew tap for [Overfit](https://github.com/israelsaba/overfit), an AI commit message and GitHub pull request generator. Overfit writes Conventional Commits and PR titles and bodies with OpenAI, Gemini, xAI, Anthropic, or a custom OpenAI-compatible model, then commits, pushes, and runs `gh pr create`.

## Install

```sh
brew tap israelsaba/overfit https://github.com/israelsaba/overfit-homebrew
brew install israelsaba/overfit/overfit
overfit setup
```

The repository name has no `homebrew-` prefix, so `brew tap` needs the full URL. After tapping, the formula is `israelsaba/overfit/overfit`, and installing it by that name trusts only this formula.

In a `Brewfile`:

```ruby
tap "israelsaba/overfit", "https://github.com/israelsaba/overfit-homebrew"
brew "israelsaba/overfit/overfit"
```

To upgrade later:

```sh
brew update
brew upgrade israelsaba/overfit/overfit
```

## Moving from an older tap name

This repository was previously named `homebrew-tap`. Remove the old tap and tap this one:

```sh
brew uninstall overfit
brew untap israelsaba/tap
brew tap israelsaba/overfit https://github.com/israelsaba/overfit-homebrew
brew install israelsaba/overfit/overfit
```

## Trust

Formulae in a third-party tap run Ruby with your user's privileges during installation. Read [`Formula/overfit.rb`](Formula/overfit.rb) and the source it builds before installing. The formula pins a release tarball by SHA-256.

## Issues

Report formula or installation problems here. Report Overfit bugs in [israelsaba/overfit](https://github.com/israelsaba/overfit/issues). Include `brew config`, the formula version, and the full command output, and never post API keys.

## Sources

- [Homebrew taps](https://docs.brew.sh/Taps), accessed 2026-11-02.
- [Homebrew tap trust](https://docs.brew.sh/Tap-Trust), accessed 2026-11-02.
- [Formula Cookbook](https://docs.brew.sh/Formula-Cookbook), accessed 2026-11-02.

## License

Overfit is MIT licensed. See the [source repository](https://github.com/israelsaba/overfit).
