#!/bin/bash
DIRETORIO="../../../../Downloads/"
cd "$DIRETORIO"

teste=$(ls -t | tail -10)

NOME_FILE="lista.txt"
DIRETORIO="../Documents/github/practice/exercicio7/"

cd "$DIRETORIO"
echo "$teste'n" >> $NOME_FILE


#echo $teste >> /Users/eloyse.fernanda/Documents/github/practice/exercicio7/anotacoes.txt