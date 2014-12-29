dotfiles
===================

Install
-------

Clone onto your machine:

    git clone git://github.com/rwoeber/dotfiles.git ~/.dotfiles
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle.vim

Install [rcm](https://github.com/thoughtbot/rcm):

    brew tap thoughtbot/formulae
    brew install rcm

Install the dotfiles (use one of the host configs)

    env RCRC=${HOME}/.dotfiles/host-[XXX]/rcrc rcup

This command will create symlinks for config files in your home directory.
Setting the `RCRC` environment variable tells `rcup` to use standard configuration options:

You can safely run `rcup` multiple times to update:

    rcup

Vim
-------

Install the plugins

    :PluginInstall


Update
-------

* Be sure to update `.dotfiles/.antigen/antigen.zsh` every now and then.

* The same is recommended for the vim plugins (use `:PluginUpdate`)


Credits
-------

Heavily inspired by thoughtbot's [dotfiles](https://github.com/thoughtbot/dotfiles/)
