#!/bin/bash
# 配置したい設定ファイル
dotfiles=(.zshrc, .p10k.zsh)

# dotfilesディレクトリのパスを取得
dotfiles_dir=$(dirname "$(realpath "$0")")

# .zshrc という設定ファイルのシンボリックリンクをホームディレクトリ直下に作成する
for file in "${dotfiles[@]}"; do
    ln -svf "$dotfiles_dir/$file" ~/
done

