#!/bin/bash
echo $HOME"/Downloads"

DIRETORIO=$HOME"/Downloads/"
DIRETORIO_DESTINO="/tmp"

opcao="m"
ultimos_arquivos=$(ls -t $DIRETORIO | tail -10)
for i in $ultimos_arquivos 
do 
 #  echo $(ls -lah $DIRETORIO$i)
    if [ "$opcao" = "m" ]
    then
        echo "m"
        echo $(cp -v $DIRETORIO$i $DIRETORIO_DESTINO)
    elif [ "$opcao" = "a" ]
    then
        echo "a"
        echo $(cp -v $DIRETORIO$i $DIRETORIO_DESTINO)
    else 
        echo "escolha a opcao certa"
    fi

done





#cd "$DIRETORIO"
#echo $DIRETORIO
#DIRETORIO="../Documents/github/practice/exercicio7/"
#echo $teste >> /Users/eloyse.fernanda/Documents/github/practice/exercicio7/anotacoes.txt