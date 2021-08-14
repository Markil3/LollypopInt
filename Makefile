CC := gcc

all: play_capture play_repeat

install: install_capture install_repeat install_lollypop

install_capture: play_capture
	cp play_capture ~/.local/bin/play_capture

install_repeat: play_repeat
	cp play_repeat ~/.local/bin/play_repeat

install_lollypop: lollypopint
	pip install dist/*.whl

play_capture: capture.c
	$(CC) -o play_capture capture.c

play_repeat: repeat.c
	$(CC) -o play_repeat repeat.c

lollypopint: setup.py lollypopint/__init__.py
	python setup.py bdist_wheel

clean:
	rm -f play_capture play_repeat
	rm -fr build
	rm -fr dist
	rm -fr lollypopint.egg-info
