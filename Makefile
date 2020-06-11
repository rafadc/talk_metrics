build:
	cp -r assets output/
	marp slide-deck.md --allow-local-files --output output/observing.html
	marp slide-deck.md --allow-local-files --output output/observing.pdf
	marp slide-deck.md --allow-local-files --output output/observing.png

watch:
	marp slide-deck.md --allow-local-files -w --output output/observing.html
