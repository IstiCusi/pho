# Embedded C in Bash Script Utility: `code.pho`

## Overview

This repository hosts a simple example, blending C programming
with the convenience of Bash scripting within a singular script named `code.pho`.
The compiled C code stays in dynamic memory and is never written to a physical
file. This allows a good performance and a low food print for cases, where one 
would like to combine bash and C features.  

## Use Cases

The capability to intertwine C and Bash in this manner can be beneficial in a variety of scenarios, including:

- **Performance-Intensive Tasks:** For instances where a script requires performing a task that demands high computational power or needs to be executed at the fastest pace possible, implementing those parts in C can provide the necessary performance boost.

- **Complex Data Processing:** When dealing with operations like sophisticated string handling, sorting, or mathematical computations that go beyond the native capacity of Bash, integrating C offers more advanced functionalities and efficient data manipulation.

- **Resource Management:** In situations where fine control over system resources is required, or there is a need to interact directly with system hardware or memory, C's low-level access can be instrumental, all while managing the operation flow with Bash's scripting ease.

- **Education and Experimentation:** For educational environments, this approach offers a practical way to experience C and Bash's interoperability, understand their respective strengths, and learn how different coding paradigms interact.

## Components

### `code.pho`

The `code.pho` example script, showcasing the idea. It demonstrates how to embed C code within a Bash script, compile, and execute it, all in one go. This script calculates and prints a sequence of values based on the embedded C program, emphasizing how users can harness the combined potential of C's processing power and Bash's versatility.

### `pho.vim`

The `pho.vim` prototype syntax file extends neovim with syntax highlighting for `.pho` files, enhancing readability and making the development process more intuitive. It differentiates C code blocks from Bash, allowing for a visually distinct and contextually aware coding experience. To use it, place the `pho.vim` file in your neovim's syntax directory, typically found under `~/.config/nvim/syntax/`.

### `config.lua`

The `config.lua` file illustrates how to integrate the new `.pho` filetype into your neovim setup. It contains the necessary line to register the `.pho` filetype with neovim, enabling the syntax highlighting provided by `pho.vim`. Incorporate its content into your neovim configuration to activate the enhanced syntax support for `.pho` scripts.

## Setup

1. **Syntax File Placement:**
   - Locate your neovim's syntax directory, often `~/.config/nvim/syntax/`.
   - Move or copy the `pho.vim` file from this repository to that directory.

2. **Filetype Configuration:**
   - Open your neovim configuration file (commonly `~/.config/nvim/init.vim` or `~/.config/nvim/init.lua` for Lua).
   - Add the line from `config.lua` in this repository to your neovim configuration file.

3. **Script Execution:**
   - Make `code.pho` executable: `chmod +x code.pho`.
   - Run the script with an optional numerical argument: `./code.pho [number]`.

## Conclusion

The `code.pho` example is an unconventional merge of scripting and programming.
Feel free to contribute, suggest improvements, or adapt this to your unique requirements. Happy coding!
