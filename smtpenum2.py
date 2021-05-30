#!/usr/bin/python

import socket, sys, re

file = open("lista.txt")
for linha in file:
	tcp = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	tcp.connect((sys.argv[1],25))
	banner = tcp.recv(1024)
	tcp.send("VRFY "+linha)
	user = tcp.recv(1024)
	if re.search("252",user):
		print "Usuario encontrado: "+user.strip("252 2.0.0")
