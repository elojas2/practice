#!/bin/bash
DIRETORIO="$HOME/Downloads/"
DIRETORIO_DESTINO="/tmp"

ultimos_arquivos=($(ls -t "$DIRETORIO" | tail -10))

# while true
# do
#     read opcao

#     if [ "$opcao" = "q" ]
#     then
#         break
#     fi

#     while [[ $opcao != "m" && $opcao != "a" ]]
#     do
#         echo "Opção inválida, escolha 'a' para apagar ou 'm' para mover:"
#         read opcao
#     done
controller="1"
    for arquivo in "${ultimos_arquivos[@]}"
    do
        while [ $controller = "1" ]
        do
            echo "Para o arquivo: $arquivo"
            echo "Digite a opção 'm' para mover e 'a' para apagar, ou 'q' para sair:"
            read opcao
            echo "Você tem certeza que deseja apagar o arquivo $arquivo? (s/n)"
            read resposta
            
            if [ "$resposta" = "s" ]
            then
                if [ "$opcao" = "a" ]
                then
                    echo "Arquivo apagado!" $(rm -v "$DIRETORIO$arquivo")
                elif [ "$opcao" = "m" ]
                then
                    echo "Digite o destino a partir da home:"
                    read destino
                    echo $(mv -v "$DIRETORIO$arquivo" "$HOME/$destino/")
                fi
            fi
            if [[ $opcao != "m" && $opcao != "a" ]]
            then
                controller="0"
            fi
        done 
    done
