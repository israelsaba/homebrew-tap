# israelsaba/homebrew-tap

Homebrew tap for **overfit** – a UNIX-philosophy CLI tool for multi-turn conversations with AI providers.

## Installation

### Via the tap (current)

```bash
brew tap israelsaba/homebrew-tap
brew install overfit
```

Or in one command:

```bash
brew install israelsaba/homebrew-tap/overfit
```

Or in a `Brewfile`:

```ruby
tap "israelsaba/homebrew-tap"
brew "overfit"
```

### From core (coming soon)

Once overfit reaches 30+ GitHub stars and meets Homebrew's inclusion criteria, it will be available as:

```bash
brew install overfit
```

## About overfit

**overfit** is a lightweight CLI tool for having multi-turn conversations with AI providers, following UNIX philosophy: compose well with pipes, shell redirects, and standard streams.

### Supported Providers
- OpenAI
- xAI
- Google AI
- Anthropic

### Cross-platform Credential Management
- **macOS**: Credentials stored securely in Keychain
- **Linux**: Credentials stored in `~/.config/overfit/config` (mode 0600)

## Quick Start

```bash
# Initial setup (interactive configuration)
overfit setup

# Have a conversation
overfit main

# Help
overfit --help
```

## Tap Structure

- `Formula/overfit.rb` – Production formula for overfit CLI
- `.github/workflows/tests.yml` – Automated tests on macOS and Linux
- `.github/workflows/publish.yml` – Bottle building and publishing
- `.github/workflows/autobump.yml` – Dependency updates

## Trust Model

This is a personal Homebrew tap. Homebrew treats formulae from this tap as trusted after you explicitly add it. To verify the formula's integrity, review the source at https://github.com/israelsaba/overfit.

## Testing

Tests run automatically on each commit:

```bash
# Manual test
brew test israelsaba/tap/overfit
```

## Contributing

Issues, PRs, and suggestions welcome at https://github.com/israelsaba/overfit.

## License

overfit is licensed under the MIT License. See LICENSE in the main repository.
