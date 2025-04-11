# Nix Deep Dive

A comprehensive presentation on Nix from the ground up.
It covers the Nix language, build tool, package manager, Nixpkgs, and NixOS.

## Purpose

This project provides educational material about Nix in the form of a slide presentation.
It covers the following topics:

- Nix as a functional programming language
- Nix as a build tool and package manager
- Nixpkgs package repository
- NixOS Linux distribution

## Project Structure

- `examples/`: Practical examples of Nix concepts
- `images/`: Images used in the presentation
- `slides/`: Presentation slides in markdown format
- `scripts/`: Utility scripts for running the presentation
  - `present.sh`: Script to run the presentation
  - `speaker.sh`: Script to display speaker notes

## Running the Presentation

### Prerequisites

This project uses Nix flakes.
Make sure you have Nix installed with flakes enabled.

### Presenter View

To run the presentation:

```sh
nix run '.#present'
```

### Speaker Notes View

To view the speaker notes:

```sh
nix run '.#speaker'
```

### Development Environment

To enter a development shell with all required dependencies:

```bash
nix develop
```
