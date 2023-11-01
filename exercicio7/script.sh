#!/bin/bash
echo $HOME"/Downloads"

DIRETORIO=$HOME"/Downloads"
DIRETORIO_DESTINO="/tmp"

#echo $DIRETORIO
cd "$DIRETORIO"

ultimos_arquivos=$(ls -t | tail -10)
for i in $teste 
do 
    echo $i
done


NOME_FILE="lista.txt"

echo "$ultimos_arquivos'n" >> $NOME_FILE

#cd "$DIRETORIO"
#DIRETORIO="../Documents/github/practice/exercicio7/"
#echo $teste >> /Users/eloyse.fernanda/Documents/github/practice/exercicio7/anotacoes.txt