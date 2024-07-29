# Chess Engine Python

## Overview

This repository contains a Python-based chess engine designed to work with the `xboard` interface. The engine leverages Python's powerful libraries and `pyenv` to create a flexible and easy-to-maintain chess playing system. It supports the UCI (Universal Chess Interface) protocol, allowing it to integrate seamlessly with various chess graphical user interfaces (GUIs) that support UCI.

The project includes:
- **A Chess Engine**: Implemented in Python, capable of interacting with chess GUIs via the UCI protocol.
- **Configuration**: Detailed instructions to set up the environment using `pyenv` and manage dependencies with `pip`.
- **Integration with `xboard`**: Configuration to run the engine using `xboard`, a popular chess GUI.

Whether you are a chess enthusiast looking to experiment with chess engines or a developer interested in enhancing a chess engine, this repository provides a solid foundation to build upon.

## Prerequisites

Make sure you have the following tools installed on your system:
- [Git](https://git-scm.com/)
- [pyenv](https://github.com/pyenv/pyenv) and [pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv)
- [xboard](https://www.gnu.org/software/xboard/)

## Setup Instructions

Follow these steps to clone the repository, set up the Python environment, and run the chess engine:

1. **Clone the Repository**

   Open a terminal and run the following command to clone the repository:

   ```bash
   git clone https://github.com/Aayush-Kr-13/Chess-Engine-Python.git
   
2. **Create a Virtual Environment**

   Navigate into the cloned repository directory:

   ```bash
    cd Chess-Engine-Python
   ```
   Create a new virtual environment using pyenv:
   ```bash
    pyenv virtualenv 3.12.0 chessify
   
3. **Configure pyenv**

   Add pyenv to your PATH and initialize it. You can add these lines to your shell configuration file (e.g., .bashrc, .zshrc, etc.):

   ```bash
    export PATH="$HOME/.pyenv/bin:$PATH"
    eval "$(pyenv init --path)"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
    After adding these lines, reload your shell configuration:

4. **Activate the Virtual Environment**

  Activate the newly created virtual environment:

  ```bash
  pyenv activate chessify
  ```
5. **Install Dependencies**

  Install the required Python packages using pip:
  ```bash
  pip install -r requirements.txt
  ```

6. **Run the Chess Engine**

  Use xboard to run the chess engine:

  ```bash
  xboard -fcp chessify/main.py -fd . -fUCI
  ```

**Notes**

Ensure that xboard is properly installed and configured on your system.
If you encounter issues related to aplay, it is generally safe to ignore them unless audio functionality is crucial for your setup.
