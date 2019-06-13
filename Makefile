
start:
	@echo starting slack bridge...
	@pgrep matterircd || matterircd -conf matterircd.toml < /dev/null &> matterircd.log & disown
	@echo slack bridge started
stop:
	killall matterircd
log: tail
tail:
	less +F matterircd.log
