#!/bin/bash

# Função para exibir o menu
exibir_menu() {
    clear
    echo "===== MENU ====="
    echo "1. Iniciar servidor"
    echo "2. Desligar servidor"
    echo "3. Status do servidor"
    echo "4. Criar usuário sem hash"
    echo "5. Fazer login sem hash"
    echo "6. Criar usuário com hash"
    echo "7. Fazer login com hash"
    echo "8. Sair"
    echo "=========================="
    echo
    read -p "Digite o número da opção desejada: " opcao
    executar_opcao $opcao
}

# Função para executar a opção escolhida
executar_opcao() {
    case $1 in
        1)
            echo "Opção: Iniciar servidor"
            nohup python3 password-evolution.py &
            ;;
        2)
            echo "Opção: Desligar servidor"
            pkill -f password-evolution.py
            ;;
        3)
            echo "Opção: Status do servidor"
            curl -k https://0.0.0.0:5000/
            ;;
        4)
            echo "Opção: Criar usuário sem hash"
            # Adicione aqui o comando para criar um usuário sem hash
            ;;
        5)
            echo "Opção: Fazer login sem hash"
            # Adicione aqui o comando para fazer login sem hash
            ;;
        6)
            echo "Opção: Criar usuário com hash"
            # Adicione aqui o comando para criar um usuário com hash
            ;;
        7)
            echo "Opção: Fazer login com hash"
            # Adicione aqui o comando para fazer login com hash
            ;;
        8)
            echo "Saindo..."
            exit 0
            ;;
        *)
            echo "Opção inválida!"
            ;;
    esac

    # Aguarda um enter para retornar ao menu principal
    read -p "Pressione ENTER para ir ao menu..."
    exibir_menu
}

# Inicializa o menu
exibir_menu
