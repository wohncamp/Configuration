pandoc -f markdown -t html $1.md -o $1.html --embed-resources --standalone --css=$2
