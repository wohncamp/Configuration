
if [ -z "$1" ] || ([ $1 != "html" ] && [ $1 != "pdf" ]);
then
    echo "Usage: ./setup-pandoc.sh [html|pdf]"
    exit 0
fi

brew install pandoc

if [ $1 == "html" ];
then
    echo "alias pandoc_html='() { pandoc -s \$1.md -o \$1.html --from markdown --to html --css https://markdowncss.github.io/\$2/css/\$2.css ; }'" >> ~/.zshrc

    echo "Example: pandoc_html sample [air|retro|splendor|modest]"
fi

if [ $1 == "pdf" ];
then
    brew install --cask basictex

    echo '' >> ~/.zshrc
    echo 'export PATH="$PATH:/Library/TeX/texbin"' >> ~/.zshrc

	sudo tlmgr update --self
	sudo tlmgr install elsarticle cm-super
	
	mkdir -p ~/.pandoc/templates
	cp $(dirname "$0")/article.latex ~/.pandoc/templates/
	
	echo "alias pandoc_pdf='() { pandoc -s \$1.md -o \$1.pdf --from markdown --to pdf --template article ; }'" >> ~/.zshrc
	echo "Example: pandoc_pdf sample"
fi
