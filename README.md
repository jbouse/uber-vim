My Uber Vim local config
========================

This is based off the fine work at https://labs.riseup.net/code/documents/8
that I compiled into a repo to enable being able to install quickly.

Installation
============

    git clone https://github.com/jbouse/uber-vim.git ~/.vim
    cd ~/.vim
    git submodule update --init
    echo "call pathogen#infect()" >> ~/.vimrc
