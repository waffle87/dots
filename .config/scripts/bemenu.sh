#!/bin/bash
black="#302D41" 
sky="#89DCEB"
mauve="#DDB6F2" 
peach="#F8BD96"
green="#ABE9B3"

bemenu-run \
	--prefix '' \
	--prompt 'search  ' \
	--list 3 \
	--fn 'mononoki Nerd Font' \
	--tb $black \
	--tf $sky \
	--fb $black \
	--ff $mauve \
	--nb $black \
	--nf $peach \
	--hb $black \
	--hf $green
