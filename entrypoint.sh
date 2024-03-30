#! /usr/bin/env sh
# -*- coding: utf-8; mode: shell-script; -*-


EMACS_DIR="${HOME}/.emacs.d/"
EMACS_ELPA_DIR="${EMACS_DIR}/elpa/"


if [ "$1" = emacs ] && \
    [ ! -d "$EMACS_ELPA_DIR" ] && \
    [ -n "$EMACS_PACKAGES" ]; then
    cat > /tmp/melpa.el <<EOF
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
EOF
    emacs --batch -l "/tmp/melpa.el" --funcall package-refresh-contents
    rm -f "/tmp/melpa.el"
fi


exec "$@"
