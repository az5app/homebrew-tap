# Homebrew Tap for Swift OCR CLI

This repository contains [Homebrew](https://brew.sh) formulae for installing the [swift-ocr-cli](https://github.com/az5app/swift-ocr-cli) tool, an OCR (Optical Character Recognition) command-line interface built with Swift.

## Installation

### Add the Tap

```bash
brew tap az5app/tap
```

### Install swift-ocr

```bash
brew install swift-ocr
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

Or if you want the latest development version:

```bash
brew install --HEAD swift-ocr
```


## Supported Packages

| Package | Description | Version | Platforms | License |
|---------|-------------|---------|-----------|---------|
| [swift-ocr](https://github.com/az5app/swift-ocr-cli) | OCR CLI tool built with Swift | 1.0.0 | Intel & Apple Silicon | Apache-2.0 |

## License

This Homebrew tap is licensed under the Apache License 2.0. See the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Troubleshooting

### SHA256 Mismatch

If you encounter a SHA256 mismatch error like the following:

```
Error: swift-ocr: SHA256 mismatch
Expected: ff46e270279f16abb3f2527cd0db9e928ef63d27806621f4b41a5832e06d7d2c
Actual: 559eb5c86d66c5c460af51809cceca1cd8571d5c5b4750aa9d96c1075e20c30c
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

4. Install swift-ocr again:

```bash
brew install swift-ocr
```

If the issue persists, please check if there's a newer version of the formula or report the issue to the repository maintainers.
