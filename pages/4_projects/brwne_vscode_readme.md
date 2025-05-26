---
pageType: Projects
status: backlog # backlog, in-progress, completed, cancelled
---
# brwne :)


**brwne** is a lightweight VS Code extension designed to enhance your development workflow. It provides smart integration for Tauri, Rust, Go, and Python projects by offering powerful code snippets, automated formatting, and custom build & debug commands—all within your favorite editor.

  

## Features

  

- **Multi-Language Support:**

Provides syntax highlighting, code completion, and debugging support for Tauri, Rust, Go, and Python projects.

- **Custom Code Snippets:**

Easily insert standardized code snippets to save time on boilerplate code.

- **Integrated Build and Debug Commands:**

Run custom build commands and debugging sessions directly from the editor.

- **Enhanced Productivity:**

With auto-format on save and integrated linting, improve code quality and reduce errors.

- **Seamless VS Code Integration:**

Leverage the native capabilities of VS Code with added extension-specific tools and configurations.

  
  

> Tip: Watch our short animations showcasing each feature to quickly get started.

  

## Requirements

  

Before using **brwne**, ensure you have the following installed:

  

- **Visual Studio Code** – Latest stable version recommended.

- **Tauri CLI** – [Installation Guide](https://tauri.app/v1/guides/getting-started/installation)

- **Rust Toolchain** – Install using [rustup](https://rustup.rs)

- **Go** – [Installation Guide](https://golang.org/doc/install) (if applicable)

- **Python 3.8+** – [Download Python](https://www.python.org/downloads/)

  

Make sure your system fulfills the minimum requirements specified by each dependency.

  

## Extension Settings

  

**brwne** contributes the following settings that you can adjust directly in VS Code:

  

- `brwne.enable`: Enable or disable the extension.

- `brwne.autoFormat`: Enable automatic code formatting on save.

- `brwne.linting`: Toggle linting support for your projects.

- `brwne.debugMode`: Activate advanced debugging features.

- `brwne.buildCommand`: Define a custom command for building your projects (ideal for Tauri apps).

  

## Installation & Configuration

  

1. **Install via the VS Code Marketplace:**

- Open the Extensions view (`Ctrl+Shift+X` on Windows/Linux or `Cmd+Shift+X` on macOS).

- Search for **brwne** and click **Install**.

  

2. **Clone and Build from Source (Optional):**

- Clone the repository:

```bash

git clone https://github.com/yourusername/brwne.git

```

- Navigate to the repository directory and build the project:

```bash

cd brwne

cargo build --release

```

> Note: This step is for developers contributing to or modifying the extension.

  

3. **Configure Your Environment:**

- Follow the instructions under **Requirements** to install all necessary dependencies.

- Adjust the extension settings in VS Code to best suit your workflow.

  

## Known Issues

  

- **Performance:**

Lower-end hardware may experience longer startup times. Future updates aim to optimize performance further.

- **Extension Conflicts:**

Some formatting extensions may conflict with **brwne**. If issues occur, try adjusting or disabling conflicting extensions.

- **Debugging:**

Certain advanced features in the Go debugging mode may not fully support third-party libraries.

  

Please report any issues via our GitHub Issues page.

  

## Release Notes

  

### 1.1.0

- Added integrated debugging support for Go projects.

- Implemented performance improvements and minor bug fixes.

  

### 1.0.1

- Resolved configuration saving issues.

- Enhanced snippet insertion functionality.

  

### 1.0.0

- Initial release of **brwne** with multi-language support and integrated development tools.

  

For a detailed list of changes, please visit our [Release Notes](https://github.com/yourusername/brwne/releases).

  

## Contributing

  

We welcome contributions! For details on how to contribute, please review our [Contributing Guidelines]

  

## Follow the Extension Guidelines

  

Make sure to follow the [VS Code Extension Guidelines](https://code.visualstudio.com/api/references/extension-guidelines) to ensure a high-quality experience for all users.

  

## Working with Markdown

  

Leverage the following shortcuts in VS Code to improve your editing experience:

- **Split Editor:** `Cmd+\` on macOS or `Ctrl+\` on Windows/Linux.

- **Toggle Preview:** `Shift+Cmd+V` on macOS or `Shift+Ctrl+V` on Windows/Linux.

- **Markdown Snippets:** Press `Ctrl+Space` to see a list of snippets.

  

## More Information

  

- [Visual Studio Code's Markdown Support](http://code.visualstudio.com/docs/languages/markdown)

- [Markdown Syntax Reference](https://help.github.com/articles/markdown-basics/)

  

**Happy coding with brwne!**