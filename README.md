# LLVM Binaries Repository

## Overview

This repository provides **pre-built binaries** of LLVM tools, starting with **LLDB** (the LLVM Debugger). More tools may be added in the future.

## Available Binaries

Currently available binaries can be found under the [Releases](https://github.com/BenjaminKern/llvm-binaries/releases) section:

- **LLDB** – The LLVM Debugger

## Getting Started

### 1. Download a Binary
- Visit the [Releases](https://github.com/BenjaminKern/llvm-binaries/releases) page.
- Choose the appropriate binary for your operating system and architecture.

### 2. Make It Executable (If Needed)
On Unix-based systems, you might need to give the binary execution permissions:
```bash
chmod +x lldb
chmod +x lldb-dap
chmod +x lldb-server
```
### 3. Run the Binary
Use the binary as you would normally:
```bash
./lldb
./lldb-dap
./lldb-server
```
## Contributing
If you’d like to contribute by adding more pre-built binaries or improving existing ones, feel free to open an issue or submit a pull request.
## License
This project is licensed under the MIT License. See the LICENSE file for details.
