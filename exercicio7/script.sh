#!/bin/bash
DIRETORIO="$HOME/Downloads/"
DIRETORIO_DESTINO="/tmp"

ultimos_arquivos=($(ls -t "$DIRETORIO" | tail -10))

while true
do
    echo "Digite a opção 'm' para mover e 'a' para apagar, ou 'q' para sair:"
    read opcao

    if [ "$opcao" = "q" ]
    then
        break
    fi

    while [[ $opcao != "m" && $opcao != "a" ]]
    do
        echo "Opção inválida, escolha 'a' para apagar ou 'm' para mover:"
        read opcao
    done

    for arquivo in "${ultimos_arquivos[@]}"
    do
        echo "Para o arquivo: $arquivo"
        
        if [ "$opcao" = "a" ]
        then
            echo "Você tem certeza que deseja apagar o arquivo $arquivo? (s/n)"
            read resposta
            if [ "$resposta" = "s" ]
            then
                echo "Arquivo apagado!" $(rm -v "$DIRETORIO$arquivo")
            elif [ "$resposta" = "n" ]
            then
                echo "Arquivo não será apagado"
            else
                echo "Opção inválida"
            fi
        elif [ "$opcao" = "m" ]
        then
            echo "Digite o destino a partir da home:"
            read destino
            echo $(mv -v "$DIRETORIO$arquivo" "$HOME/$destino/")
        fi
        echo "deseja escolher outra opcao? (s/n)"
        read resposta
        if [ "$resposta" = "s" ]; then
            break
        fi
    done
done
