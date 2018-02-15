#!/usr/bin/env zsh

autoload -U is-at-least
autoload -U add-zle-hook-widget

_zsh_reset_title() {
    printf "\033]0;\a"
}

if is-at-least 5.3; then
    add-zle-hook-widget zle-line-init _zsh_reset_title
else
    print -r -- >&2 'zsh-reset-title: add-zle-hook-widget is not supported on this version of zsh.'
fi
