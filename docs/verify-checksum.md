# Verify Swift OCR CLI Checksum

This document provides instructions on how to verify the integrity of the Swift OCR CLI binaries by checking their SHA-256 checksums.

## Why Verify Checksums?

Verifying the SHA-256 checksum of a downloaded binary helps ensure:

- The file hasn't been corrupted during download
- The file hasn't been tampered with
- You're getting the exact file that was officially released

## Verification Instructions

### For ARM Mac (Apple Silicon)

Run the following command to download the binary and calculate its SHA-256 hash:

```bash
curl -sL https://github.com/az5app/swift-ocr-cli/releases/download/v1.0.0/swift-ocr-cli-arm-mac | shasum -a 256
```

The expected output should be:
```
ff46e270279f16abb3f2527cd0db9e928ef63d27806621f4b41a5832e06d7d2c  -
```

### For Intel Mac

Run the following command to download the binary and calculate its SHA-256 hash:

```bash
curl -sL https://github.com/az5app/swift-ocr-cli/releases/download/v1.0.0/swift-ocr-cli-intel-mac | shasum -a 256
```

The expected output should be:
```
1123700937a755415db2e77691c2d714e0bf4f65713eb064e301d6278376b732  -
```

## Verifying Against Homebrew Formula

You can also check the SHA-256 values in the Homebrew formula:

```ruby
on_arm do
  url "https://github.com/az5app/swift-ocr-cli/releases/download/v1.0.0/swift-ocr-cli-arm-mac"
  sha256 "ff46e270279f16abb3f2527cd0db9e928ef63d27806621f4b41a5832e06d7d2c"
end

on_intel do
  url "https://github.com/az5app/swift-ocr-cli/releases/download/v1.0.0/swift-ocr-cli-intel-mac"
  sha256 "1123700937a755415db2e77691c2d714e0bf4f65713eb064e301d6278376b732"
end
```

If the calculated hash doesn't match the expected value, do not use the binary and report the issue.

## Alternative Verification Method

You can also download the file first and then check its hash:

```bash
# For ARM Mac
curl -L https://github.com/az5app/swift-ocr-cli/releases/download/v1.0.0/swift-ocr-cli-arm-mac -o swift-ocr-cli
shasum -a 256 swift-ocr-cli

# For Intel Mac
curl -L https://github.com/az5app/swift-ocr-cli/releases/download/v1.0.0/swift-ocr-cli-intel-mac -o swift-ocr-cli
shasum -a 256 swift-ocr-cli
```

## Troubleshooting

If the checksums don't match:

1. Try downloading the file again to rule out download corruption
2. Ensure you're downloading the correct version (v1.0.0 in this case)
3. Check if your platform (ARM vs Intel) matches the binary you're downloading
4. Report any persistent mismatch to the project maintainers
