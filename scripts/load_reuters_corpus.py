#! /bin/env/python

from nltk.corpus import reuters
import sys

sys.stdout.write(reuters.raw())