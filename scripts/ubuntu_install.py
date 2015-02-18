#!/usr/bin/python3

'''
this script will install all the required packages that you need on
ubuntu to compile and work with this package.
'''

import subprocess # for check_call

packs=[
	# for building from my own repo
	'templar',
	'pdmt',

	# R core
	'r-base-core',
	'r-doc-info',
	'r-doc-html',
	'r-doc-pdf',

	# R packages
	'r-cran-sm',
	'r-cran-plotrix',
	'r-cran-snow',
]

args=['sudo','apt-get','install','--assume-yes']
args.extend(packs)
subprocess.check_call(args)
