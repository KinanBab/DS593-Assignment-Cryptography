# Cryptography Assignment for BU's DS 593

This repository contains the code for the Cryptography crash course assignment in DS 593 in Fall 2026.

See [https://ds593.babman.io/2026/assign/crypto.html](https://ds593.babman.io/2026/assign/crypto.html) for the assignment handout.

The *mpc*, *pir*, and *psi* directories contain implementation tasks to familiarize you with concepts used in the cryptography-based papers we discuss in the course. Each directory contains a README with further instructions, and in-line comments will guide you through the tasks.

## Getting the code

The *pir* directory depends on a git submodule, so clone the repository with `--recurse-submodules`:
```
git clone --recurse-submodules https://github.com/KinanBab/ds593-cryptography-assignment.git
```
Do not download the repository as a ZIP file from GitHub: the ZIP does not include the submodule.
If you already cloned without `--recurse-submodules`, run `git submodule update --init` from the top-level directory.

## Platforms

The assignment works on Linux and macOS, on both Intel/AMD (x86) and ARM (e.g. Apple Silicon) machines.
On Windows, please use [WSL](https://learn.microsoft.com/en-us/windows/wsl/install).
