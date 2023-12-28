#!/usr/bin/env python3

"""
Add numbers on every line, preserve text
"""

import sys

file_arg = sys.argv[1]
with open(file_arg, 'r', encoding="utf-8") as input_file:
    for line in input_file:
        total = 0
        desc = []
        for item in line.rstrip().split():
            try:
                total += int(item)
            except ValueError:
                desc.append(item)

        print(' '.join(desc), total)
