
TALKPATH = public_html/ramblings/talks/vaurien-marteau

publish:
	rsync -avzd ./ /home/rfk/MainDesktop/talk-vaurien-loads/
	#ssh rfk.id.au "mkdir -p $(TALKPATH)"
	#scp ./slides.html rfk.id.au:$(TALKPATH)/index.html
	#rsync -avzd ./resources/ rfk.id.au:$(TALKPATH)/resources/
	#ssh rfk.id.au "chmod -R o+rx $(TALKPATH)"
