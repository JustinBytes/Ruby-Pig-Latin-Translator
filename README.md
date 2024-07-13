# Pig Latin Translator
This is a simple Ruby script that translates English sentences into Pig Latin.
- If a word starts with a vowel, append "ay" to the end of the word.
- If a word starts with a consonant, move the first consonant or consonant cluster to the end of the word and add "ay".

## Features

- Translates individual words and complete sentences to Pig Latin.
- Handles punctuation and maintains the original capitalization of words.

## Requirements

- Ruby (version 2.0 or higher)
- Check to see if you have Ruby currently installed and that you have the correct version of 2.0+
```bash
ruby -v
```
***Note: If you already have Ruby installed jump to Installation for git clone instructions.***
### If you dont have Ruby installed

#### Windows
1. Download and install RubyInstaller from [RubyInstaller for Windows](https://rubyinstaller.org/).
2. Run the installer and follow the setup instructions. Make sure to check the option "Add Ruby executables to your PATH" during installation.

#### Debian

Make sure everything is up to date.
```bash
sudo apt update
```
Ruby Installation
```bash
sudo apt install ruby-full
```

#### Arch Linux
Installation
```bash
sudo pacman -S ruby
```

## Installation

1. Clone the repository:

```bash
git clone https://github.com/yourusername/pig-latin-translator.git
cd pig-latin-translator
ruby translator.rb
```
