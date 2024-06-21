#!/bin/bash

for i in _schulklassen/*
do
	 mkdir $(basename $i .txt)
done

for i in _schulklassen/*
do
	for j in $(cat $i)
	do
		dir=$(basename $i .txt)/$j
		mkdir $dir
		cp _templates/* $dir
	done
done
