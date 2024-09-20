
## Torify

**Torify** is a handy tool that helps you use the TOR network directly from your terminal. It allows you to run various command-line applications like - `curl`, `ssh` or `wget` anonymously ensuring that your online activities are private and secure.

## Prerequisite

Before installing Torify ensure that you have the following:

- **Tor Installed :** Tor must be installed on your system.
- **SOCKS Port Configuration:**  Ensure that the SOCKS port in your Tor configuration file is set to `9050`


## Installation

Copy the repository

```bash
  git clone https://github.com/Fuwad9096/Torify.git
```

Change permission of `install.sh` and `torify`

```bash
  cd Torify
  chmod +x torify
  chmod +x install.sh
```

Run the `install.sh` script

```bash
  ./install.sh
```

## Note

This tool is only compatible with Linux and can't be used for Windows. It's still under development.

