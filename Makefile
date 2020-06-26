SHELL = /bin/bash

.PHONY: clean distclean

VE_DIR = ve

ACTIVATE = $(VE_DIR)/bin/activate

jupyter: $(ACTIVATE)
	. $(ACTIVATE) && jupyter notebook

$(ACTIVATE): requirements.txt
	python3 -m venv $(VE_DIR)
	$(VE_DIR)/bin/pip install --upgrade pip wheel
	$(VE_DIR)/bin/pip install -r requirements.txt
	touch $(ACTIVATE)

clean:
	find . \( -name \*.pyc \) -delete

distclean: clean
	rm -rf $(VE_DIR)

jupyter-list: $(ACTIVATE)
	. $(ACTIVATE) && jupyter notebook list
