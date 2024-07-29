.PHONY: run-xboard
run-xboard:
	xboard -fcp chessify/main.py -fd . -fUCI -adapterCommand 'polyglot -noini -ec "%fcp" -ed "%fd" -log true'

.PHONY: run-lichess
run-lichess:
	cd lichess-bot && python lichess-bot.py --config ../lichess-bot-config.yml --disable_auto_logging -v

.PHONY: benchmark-speed
benchmark-speed:
	pytest chessify/benchmark/speed \
		--benchmark-min-rounds=20 \
		--benchmark-autosave

.PHONY: benchmark-memory
benchmark-memory:
	pytest chessify/benchmark/memory --memray \
		--stacks 1 > badchess/benchmark/memory/result.txt
