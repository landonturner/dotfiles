#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo $DIR

# Create symlinks

# Create symlinks

# Install the vim bundles
pushd "${DIR}/vim/bundle" > /dev/null
declare -a git_commands=(
  "git clone https://github.com/scrooloose/nerdtree"
  "git clone https://github.com/kien/ctrlp.vim"
  "git clone https://github.com/scrooloose/nerdcommenter"
  "git clone https://github.com/altercation/vim-colors-solarized"
  "git clone https://github.com/tpope/vim-surround"
)

for c in "${git_commands[@]}"
do
  repo_name=$(echo $c | cut -d '/' -f 5)
  
  if [ ! -d "$repo_name" ]; then
    echo "Installing ${repo_name}..."
    eval "$c"
  fi
done

popd > /dev/null
