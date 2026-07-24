# command()

> **Fork & Maintenance Notice:**  
> The original repository was removed by its initial author. This repository is a maintained fork preserved to keep the project available. It includes added support for system-wide installation via `make` and `make install`.

---

## What is `command()`?

`command()` is a lightweight C++ function designed to execute system commands safely and easily.

**The Formula:** `system()` simplicity + `fork()`/`exec()` safety = `command()`

### Why Use It?
- `system()` is vulnerable to **shell injection** attacks.
- `fork()` and `exec()` are safe, but require verbose and repetitive boilerplate code.
- `command()` combines the safety of `fork()`/`exec()` with an easy-to-use syntax.

---

## Installation & Uninstallation

**Install System-Wide:**
```bash
make
sudo make install
```

**Uninstall:**
```bash
sudo make uninstall
```

---

## Usage Example

### 1. Source Code (`main.cpp`)
```cpp
#include <command.hpp>

int main() {
    command("ls -la");
    return 0;
}
```

### 2. Compilation
Compile your code by linking the library with `-lcommand`:
```bash
g++ main.cpp -lcommand -o main.elf
```

### 3. Execution
```bash
./main.elf
```

---

## License

This project is licensed under the **GNU Affero General Public License v3 (AGPLv3)**. Due to the terms of the original project, it must remain under the AGPLv3 license.

For more details, please check the [LICENSE](LICENSE) file.
