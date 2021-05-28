#!/bin/bash

for palavra in $(cat lista2.txt);
do
	resposta=$(curl -s -H "User-Agent: DesecTools" -o /dev/null -w "%{http_code}" $1/$palavra/)
	if [ $resposta == "200" ];
	then
		echo "Diretorio encontrado: $1/$palavra/"
	fi
done 

for palavra in $(cat lista2.txt);
do
	resposta=$(curl -s -H "User-Agent: DesecTools" -o /dev/null -w "%{http_code}" $1/$palavra)
	if [ $resposta == "200" ];
	then
		echo "Arquivo encontrado: $1/$palavra"
	fi
done 

for palavra in $(cat lista2.txt);
do
	resposta=$(curl -s -H "User-Agent: DesecTools" -o /dev/null -w "%{http_code}" $1/$palavra.$2)
	if [ $resposta == "200" ];
	then
		echo "Arquivo encontrado: $1/$palavra.$2"
	fi
done 