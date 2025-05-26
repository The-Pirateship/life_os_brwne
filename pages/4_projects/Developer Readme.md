<div align="center"> <!-- use align as CSS is not allowed on GitHub markdown https://github.com/orgs/community/discussions/22728 -->
  <img src="https://github.com/user-attachments/assets/49995136-57dc-46f0-a9be-26e6fc166388" alt="" width=100> <!-- Logo -->
  <h1><a href="https://brwne.net">brwne</a></h1> <!-- Project Name -->
  <p> <!-- Description -->
    A realtime flavor of git.
  </p>
  <p> <!-- Built With -->
    Built With: &bull;
  </p>
</div>

---

<details>
<summary>Table of Contents</summary>

- [About](#about)
- [Demo](#demo)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Execution](#execution)
- [Usage](#usage)
  - [Code Architecture](#code-architecture)
- [Roadmap](#roadmap)
</details>

## About

brwne brings together a Next.js frontend, a Tauri (Rust) backend, a Go daemon and a FastAPI Git service. Everything lives in this single repo so you can launch the whole stack with one script and hack away.

## Demo

## Getting Started

### Prerequisites

- Rust (via [rustup](https://www.rust-lang.org/tools/install))
- [Go](https://go.dev/doc/install)
- Python
- [cloudflared](https://github.com/cloudflare/cloudflared/releases)
- npm (via [nvm](https://github.com/nvm-sh/nvm?tab=readme-ov-file#install--update-script))
- pnpm (via [pnpm](https://pnpm.io/installation#on-posix-systems))
- [vsce](https://code.visualstudio.com/api/working-with-extensions/publishing-extension#installation) (via npm)
- [Doppler](https://docs.doppler.com/docs/install-cli)

### Installation

Install brwne for development.

```bash
# clone the repo
git clone https://github.com/The-Pirateship/brwne && cd brwne/
# install node dependencies
node install
```

Configure Doppler with `doppler login`.

Setup brwne VSCode extension.

```bash
npm run compile:dev
```

Install dependencies for GitServer.

```bash
cd GitServer/
python -m venv venv
source venv/bin/activate
python -m pip install -r requirements.txt
```

### Execution

The devscript is used for running the Tauri app & GitServer. Run the devscript without any arguments to show the help message.

```bash
./dev.sh # or ./dev.sh --help
```

## Usage

### Code Architecture

- `TauriApp`: Tauri app with Next.js as the frontend.
  - `TauriApp/LocalServer`: Go WebSocket daemon.
  - `TauriApp/src-tauri`: Rust backend code & Tauri configuration files.
- `GitServer`: FastAPI service for diffs and webhooks.
- `ExtensionVSCode/brwne`: VS Code extension for brwne.

Each component has its own README as listed here:

- [TauriApp README](TauriApp/README.md)
- [GitServer README](GitServer/README.md)
- [VS Code Extension README](ExtensionVSCode/README.md)

## Roadmap

## License <!-- omit in toc -->

Distributed under a proprietary code license.

## Credits <!-- omit in toc -->

- [brwne](https://brwne.net)
