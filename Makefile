build:
	cp -r assets output/
	marp slide-deck.md --output output/observing.html
	marp slide-deck.md --output output/observing.pdf
	marp slide-deck.md --output output/observing.png

watch:
	marp slide-deck.md -w --output output/observing.html
