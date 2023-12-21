PLUGIN_DIR=~/.vim/pack/vendor/start

mkdir -p $PLUGIN_DIR

if [ -d "$PLUGIN_DIR/vim-lsp" ]; then
  git -C "$PLUGIN_DIR/vim-lsp" pull
else
  git clone git@github.com:prabirshrestha/vim-lsp.git $PLUGIN_DIR/vim-lsp
fi

if [ -d "$PLUGIN_DIR/vim-lsp-settings" ]; then
  git -C "$PLUGIN_DIR/vim-lsp-settings" pull
else
  git clone git@github.com:mattn/vim-lsp-settings.git $PLUGIN_DIR/vim-lsp-settings
fi

if [ -d "$PLUGIN_DIR/asyncomplete.vim" ]; then
  git -C "$PLUGIN_DIR/asyncomplete.vim" pull
else
  git clone git@github.com:prabirshrestha/asyncomplete.vim.git $PLUGIN_DIR/asyncomplete.vim
fi

if [ -d "$PLUGIN_DIR/asyncomplete-lsp.vim" ]; then
  git -C "$PLUGIN_DIR/asyncomplete-lsp.vim" pull
else
  git clone git@github.com:prabirshrestha/asyncomplete-lsp.vim.git $PLUGIN_DIR/asyncomplete-lsp.vim
fi

if [ -d "$PLUGIN_DIR/nerdtree" ]; then
  git -C "$PLUGIN_DIR/nerdtree" pull
else
  git clone git@github.com:preservim/nerdtree.git $PLUGIN_DIR/nerdtree
fi

cp $(dirname "$0")/.vimrc ~/.vimrc
