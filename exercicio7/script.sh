#!/bin/bash
#echo $HOME"/Downloads"

DIRETORIO=$HOME"/Downloads/"
DIRETORIO_DESTINO="/tmp"

ultimos_arquivos=$(ls -t $DIRETORIO | tail -10)
for i in $ultimos_arquivos 
do 
#echo $(ls -lah $DIRETORIO$i)
    echo "para o arquivo: "$i

    echo "Digite a opcao m para mover e a para apagar:"
    read opcao;
    
    if [ "$opcao" = "a" ]
    then
        echo $(rm -v $DIRETORIO$i)
    elif [ "$opcao" = "m" ]
    then
        echo "Digite o destino a partir da home:"
        read destino;
        echo $(mv -v "$DIRETORIO$i" "$HOME/$destino/")
    else 
        echo "escolha a opcao certa"
    fi
done