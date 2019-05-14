## pip install -e . vs pip install .

The relationship between the docutil/__init__.py file and the base checkout
is altered by this, such that the default value for the --dir parameter only
works with -e
