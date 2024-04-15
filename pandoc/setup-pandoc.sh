brew install pandoc
brew install --cask basictex

echo '' >> ~/.zshrc
echo 'export PATH="$PATH:/Library/TeX/texbin"' >> ~/.zshrc

sudo tlmgr update --self
sudo tlmgr install elsarticle cm-super

mkdir -p ~/.pandoc/templates
cp $(dirname "$0")/article.latex ~/.pandoc/templates/

echo "Example: pandoc sample.md -o sample.pdf --from markdown --template article"
