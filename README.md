![command logo](commandlogo.png)
# command() Function

## What is `command()`?
- `command()` is a small but powerful FOSS C++ function.
- Its formula is basically: **system()-like syntax + fork()/exec() safety = command()**
- Designed to provide an easy, readable, shell-free way to run system commands.i
- It is single .hpp file function, so it is very easy for adding it to your C++ project:
- Just copy [`command.hpp`](command.hpp) to your project directory, write ```include "command.hpp``` to your C++ file and it is ready to use!

## Philosophy / History
While developing my project [`pacostrap`](https://github.com/npc-gnu/pacostrap), I realized:
- `system()` is too risky due to shell injection.
- `fork()` and `exec()` are safe, but painful to read and write.

So I wrote my own wrapper — `command()` — a minimal, readable and safe way to execute commands.

## Example Usage
```cpp
#include <command.hpp> // for my own super duper awesome command function

int main() {
    command("ls")
    return 0;
}
```
### Compiling library
```Bash
make
sudo make install
```

### Compiling your own code with library
```Bash
g++ main.cpp -lcommand -o main.elf
```

### Running
```Bash
./main.elf
```

### Uninstalling library
```Bash
sudo make uninstall
```

## Licensing
This project is licensed under the GNU Affero General Public License v3 (AGPLv3).
Allowed License Reuse:
You may reuse this function in projects that are licensed under copyleft (strong or weak) licenses, such as:
   - GNU GPLv2, GPLv3, AGPLv3, LGPLv2, LGPLv3
   - SSPL
   - EUPL
   - CeCILL v2.1
   - OSL
   - RTPL
   - MPL
For more detail, please look at [LICENSE file](LICENSE.md)

