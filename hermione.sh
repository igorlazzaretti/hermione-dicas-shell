#!/bin/bash

# Bem-vindo à Hermione, sua assistente no Linux!
while true; do
    echo "Olá, sou Hermione! Lembre-se, estas dicas não substituem sua ida para a biblioteca."
    echo "Escolha uma opção abaixo:"
    echo "1 - Dicas Linux"
    echo "2 - Dicas Git"
    echo "3 - Dicas Alias"
    echo "4 - Dicas Podman"
    echo "5 - Dicas Postgres"
    echo "6 - Dicas SQL"
    echo "7 - Atualizar meu sistema"
    echo "0 - Sair"

    # Solicitar a entrada do usuário
    read -p "Digite sua escolha (0-7): " opcao

    # Função para perguntar se o usuário quer continuar
    perguntar_continuar() {
        while true; do
            read -p "Sim (s) ou Não (n)? " resposta
            case $resposta in
                [Ss]*)
                    return 0 # Volta ao menu
                    ;;
                [Nn]*)
                    echo "Lembre-se: é leviÔsa e não leviosÁ..."
                    exit 0 # Encerra o programa
                    ;;
                *)
                    echo "Por favor, escolha 's' para sim ou 'n' para não."
                    ;;
            esac
        done
    }

    # Processar a escolha do usuário
    case $opcao in
        1)
            echo "Estas dicas serão uteis para navegar no mundo Linux."
            echo ""
            echo "[comando] --help --- Ajuda. Lista as opções do comando pretendido"
            echo "ls -a            --- Lista todos os arquivos ocultos"
            echo "ls -lh           --- Lista arquivos com seu tamanho em formato legível"
            echo "rm -rf           --- Remove pasta recursivamente e forçadamente"
            echo "cp               --- Copia um arquivo para o local desejado"
            echo "cat [nome].txt   --- Concatena criando um novo arquivo"

            echo "Ainda precisa de ajuda? Talvez algumas horas na biblioteca resolvam..."
            perguntar_continuar
            ;;
        2)
        # echo "2 - Dica Git"
            echo "Dica Git: Use 'git log --oneline --graph' para visualizar o histórico de commits."
            echo "Ainda precisa de ajuda? Talvez algumas horas na biblioteca resolvam..."
            perguntar_continuar
            ;;
        3)
        # echo "3 - Dica Alias"
            echo "Dica Alias: Use 'alias ll=\"ls -lah\"' para criar um atalho para listar arquivos."
            echo "Ainda precisa de ajuda? Talvez algumas horas na biblioteca resolvam..."
            perguntar_continuar
            ;;
        4)
            echo "Dica Podman: Use 'podman ps -a' para listar todos os contêineres, incluindo os parados."
            echo "Ainda precisa de ajuda? Talvez algumas horas na biblioteca resolvam..."
            perguntar_continuar
            ;;
        5)
            echo "Dica Postgres: Use 'psql -U usuario -d banco' para acessar o banco de dados pelo terminal."
            echo "Ainda precisa de ajuda? Talvez algumas horas na biblioteca resolvam..."
            perguntar_continuar
            ;;
        6)
            echo "Dica SQL: Use 'SELECT * FROM tabela LIMIT 10;' para visualizar os primeiros 10 registros."
            echo "Ainda precisa de ajuda? Talvez algumas horas na biblioteca resolvam..."
            perguntar_continuar
            ;;
        7)
            echo "Vamos atualizar o seu Sistema Operacional Fedora."
            echo ""
            echo "Executando o comando 'sudo dnf upgrade --refresh'..."
            sudo dnf upgrade --refresh -y

            echo "Atualização finalizada com sucesso!"
            echo "Ainda precisa de ajuda? Talvez algumas horas na biblioteca resolvam..."
            perguntar_continuar
            ;;
        0)
            echo "Saindo..."
            echo "Lembre-se: é leviÔsa e não leviosÁ..."
            exit 0
            ;;
        *)
            echo "Algo deu errado, Harry! Espero que não sejamos mortos, ou pior, expulsos."
            ;;
    esac
    echo "" # Linha em branco para melhor legibilidade
done