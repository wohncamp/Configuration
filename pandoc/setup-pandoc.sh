brew install pandoc

# Setting up pandoc latec templating
brew install --cask basictex

echo '' >> ~/.zshrc
echo 'export PATH="$PATH:/Library/TeX/texbin"' >> ~/.zshrc

sudo tlmgr update --self
sudo tlmgr install elsarticle cm-super

mkdir -p ~/.pandoc/templates
cp $(dirname "$0")/article.latex ~/.pandoc/templates/

echo "alias pandoc_pdf='() { pandoc -s \$1.md -o \$1.pdf --from markdown --to pdf --template article ; }'" >> ~/.zshrc
echo "Example: pandoc_pdf sample"

# Setting up pandoc html templating

echo "alias pandoc_html='() { pandoc -s \$1.md -o \$1.html --from markdown --to html --css https://markdowncss.github.io/\$2/css/\$2.css ; }'" >> ~/.zshrc

echo "Example: pandoc_html sample [air|retro|splendor|modest]"
