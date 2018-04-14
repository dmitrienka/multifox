#!/usr/bin/env bash

 find | grep Cost | sed 's/[.]\/multifox_out_\([0-9]*\)\/OptimizationObj #[0-9\_-]*Run#[0-9]*-Cost-\([0-9.]*\)[.]xml/\2\t&/' | sort -t \t -k 1 -g -r | cut -f2 
