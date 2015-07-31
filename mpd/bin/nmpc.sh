#!/bin/bash
#Quick and dirty script to update mpd to use my mpd stream
mpc stop > /dev/null
mpc clear > /dev/null
mpc load mpd.mp3.m3u > /dev/null
mpc play
