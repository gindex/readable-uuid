# Generate readable and easy to remember UUIDs

### Why?
In some use cases it's quite useful to have readable and easy to remember UUIDs, e.g. in unit tests or debugging. So `uuid` is a simple to use bash function that generates UUIDs from a provided pattern of hexadecimal digits.  

### Usage
```bash
uuid 1
# prints 11111111-1111-1111-1111-111111111111
uuid 123
# prints 12312312-1231-1231-1231-123123123123
uuid beef
# prints beefbeef-beef-beef-beef-beefbeefbeef
```

### Installation
##### Manual (recommended)
Copy and paste the uuid function from [uuid.sh](uuid.sh) to the preferred location for functions and aliases on your system, e.g. `.functions`.
##### ZSH
The following command will clone this repository into `~/.dotfiles/functions/readable-uuid` directory and source `uuid.sh` in `.zshrc`. 

```bash
git clone --depth=1 https://github.com/gindex/readable-uuid ~/.dotfiles/functions/readable-uuid \
&& echo 'source ~/.dotfiles/functions/readable-uuid/uuid.sh' >> ~/.zshrc \
&& source ~/.zshrc
```

##### Bash
The following command will clone this repository into `~/.dotfiles/functions/readable-uuid` directory and source `uuid.sh` in `.bash_profile`.

```bash
git clone --depth=1 https://github.com/gindex/readable-uuid ~/.dotfiles/functions/readable-uuid \
&& echo 'source ~/.dotfiles/functions/readable-uuid/uuid.sh' >> ~/.bash_profile \
&& source ~/.bash_profile
```

