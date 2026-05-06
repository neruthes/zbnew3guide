#!/bin/bash


case $1 in
	src/ )
		cd src || exit 1
		find data -type f -name '*.toml' | sort > list.txt
		;;
	c|w )
		typst $1 --root .		src/zbnew3guide.typ 		_dist/zbnew3guide.pdf
		;;
	'' )
		;;
esac
