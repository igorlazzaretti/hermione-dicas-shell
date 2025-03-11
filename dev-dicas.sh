#!/bin/bash

# Exibir mensagem inicial
echo "Precisando de dicas? Escolha as opções abaixo:"

# Processar a escolha do usuário
case $opcao in
    1)
        echo "Dica Linux: Use 'ls -lah' para listar arquivos com detalhes."
        ;;
    2)
        echo "Dica Git: Use 'git log --oneline --graph' para visualizar o histórico de commits."
        ;;
    3)
        echo "Dica Alias: Use 'alias ll=\"ls -lah\"' para criar um atalho para listar arquivos."
        ;;
    4)
        echo "Dica Podman: Use 'podman ps -a' para listar todos os contêineres, incluindo os parados."
        ;;
    5)
        echo "Dica Postgres: Use 'psql -U usuario -d banco' para acessar o banco de dados pelo terminal."
        ;;
    6)
        echo "Dica SQL: Use 'SELECT * FROM tabela LIMIT 10;' para visualizar os primeiros 10 registros."
        ;;
    0)
        echo "Saindo..."
        exit 0
        ;;
    *)
        echo "Opção inválida! Tente novamente."
        ;;
esac
