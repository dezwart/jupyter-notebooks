jupyter-notebooks
=================

Simple structure for running [jupyter](http://jupyter.org) using Python `virtualenv`. Aim is to keep the host environment clean from notebook package dependencies, which from experience doing concurrent interactive analyses against different data warehouses; may require many varied dependency chains which may be incompatible with others.

This is a stub, to be customsed as the operator sees fit. Obviously, keep your actual notebooks in your own repoistories.

But how?
--------

    git clone git@github.com:dezwart/jupyter-notebooks.git
    cd jupyter-notebooks
    # Edit requirements.txt as needed
    make

Assumptions
-----------

It is assumed the following are available for the virtual environment to work:

* Python
* Python pip & virtualenv
* GNU Make
