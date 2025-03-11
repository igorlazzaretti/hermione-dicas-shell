#!/bin/bash

# Bem-vindo à Hermione, a assistente mágica de dicas!
while true; do
    echo "Olá, sou Hermione! Lembre-se, estas dicas não substituem sua ida para a biblioteca."
    echo "Escolha uma opção abaixo:"
    echo "1 - Dica Linux"
    echo "2 - Dica Git"
    echo "3 - Dica Alias"
    echo "4 - Dica Podman"
    echo "5 - Dica Postgres"
    echo "6 - Dica SQL"
    echo "0 - Sair"

    # Solicitar a entrada do usuário
    read -p "Digite sua escolha (0-6): " opcao

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
            echo "Dica Linux: Use 'ls -lah' para listar arquivos com detalhes."
            echo "Ainda precisa de ajuda? Talvez algumas horas na biblioteca resolvam..."
            perguntar_continuar
            ;;
        2)
            echo "Dica Git: Use 'git log --oneline --graph' para visualizar o histórico de commits."
            echo "Ainda precisa de ajuda? Talvez algumas horas na biblioteca resolvam..."
            perguntar_continuar
            ;;
        3)
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
        0)
            echo "Lembre-se: é leviÔsa e não leviosÁ..."
            exit 0
            ;;
        *)
            echo "Algo deu errado, Harry! Espero que não sejamos mortos, ou pior, expulsos."
            echo "Ainda precisa de ajuda? Talvez algumas horas na biblioteca resolvam..."
            perguntar_continuar
            ;;
    esac
    echo "" # Linha em branco para melhor legibilidade
done