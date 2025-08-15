# az5app Homebrew Tap

This repository contains [Homebrew](https://brew.sh) formulae for installing various command-line tools developed by az5app, including OCR tools, VS Code extensions, and AI data management utilities.

## Installation

### Add the Tap

```bash
brew tap az5app/tap
```

### Install Packages

#### Swift OCR CLI
An OCR (Optical Character Recognition) command-line tool built with Swift:
```bash
brew install swift-ocr
```

#### VS Active Claude
A Go CLI tool for VS Code Copilot extension modifications:
```bash
brew install vs-active-claude
```

#### AIHub Shell
AIHub Korea API command-line interface for downloading AI datasets:
```bash
brew install aihubshell
```

For AIHub Shell, you'll need to set your API key:
```bash
export AIHUB_APIKEY="your-api-key-here"
```

### Verify Binary Integrity

For instructions on how to verify the integrity of the downloaded binaries by checking their SHA-256 checksums, see:
[Verify Checksum Guide](docs/verify-checksum.md)

### Update the Tap

To update the tap repository to get the latest formulae:

```bash
cd "$(brew --repo az5app/tap)"
git pull --rebase
cd -
```

Or if you want the latest development version (available for swift-ocr and vs-active-claude):

```bash
brew install --HEAD <formula-name>
```


## Supported Packages

| Package | Description | Version | Platforms | License |
|---------|-------------|---------|-----------|---------|
| [swift-ocr](https://github.com/az5app/swift-ocr-cli) | OCR CLI tool built with Swift | 1.0.0 | Intel & Apple Silicon | Apache-2.0 |
| [vs-active-claude](https://github.com/az5app/vs-active-claude-public) | VS Code Copilot extension modifier | 1.0.0 | macOS (Intel & Apple Silicon), Linux (Intel & ARM) | Apache-2.0 |
| [aihubshell](https://github.com/az5app/aihubshell-kr) | AIHub Korea API CLI for AI datasets | 0.5 | All platforms (requires bash & curl) | MIT |

## License

This Homebrew tap is licensed under the Apache License 2.0. See the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Troubleshooting

### SHA256 Mismatch

If you encounter a SHA256 mismatch error for any formula:

```
Error: <formula-name>: SHA256 mismatch
Expected: <expected-hash>
Actual: <actual-hash>
```

This typically happens when the binary has been updated without changing the version number. To resolve this issue:

1. Untap the repository:

```bash
brew untap az5app/tap
```

2. Clear Homebrew's download cache:

```bash
brew cleanup
```

3. Re-tap the repository:

```bash
brew tap az5app/tap
```

4. Install the formula again:

```bash
brew install <formula-name>
```

If the issue persists, please check if there's a newer version of the formula or report the issue to the repository maintainers.
