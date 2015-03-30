#!/usr/bin/env python
from random import randint
from subprocess import Popen, PIPE,call
p = Popen("ls ~/xkcd_comics/*.png", stdout=PIPE, shell=True)
result=p.communicate()[0].split('\n')[0:-1]
n=len(result)
comic=result[randint(0,n)]
call(["i3lock","-i",comic,"-t"])
