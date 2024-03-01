# dotfiles

My development configuration based on neovim.

## Setting up

1. Install neovim.

2. Run the below command:

```bash
curl https://gist.github.com/mayankshah1607/85c1a89ebea4951053e0917e5a157aeb | bash
```

3. Install [packer.nvim](https://github.com/wbthomason/packer.nvim)

4. Open `nvim` and run `:PackerSync`

## Management

I manage my dotfiles using a [bare git repository](https://www.theserverside.com/blog/Coffee-Talk-Java-News-Stories-and-Opinions/What-is-a-bare-git-repository).

Add the following alias:

```
alias config=git --git-dir=$HOME/dotfiles/ --work-tree=$HOME
```

Now, use the usual git commands with the `config` alias to manage the dotfiles in `$HOME`:

```sh
config status
config add ~/.zshrc
config commit -m "syncing" && config push
```
