#!/bin/bash

osCheck() {
    if [[ $OSTYPE == "linux-gnu" ]]; then
        return 1
    fi
    return 0
}

cat <<'ASCII'
  ____  _____ ____ ___    _  _   _   ____ ___ ____  _     
 |  _ \| ____| __ )_ _|  / \| \ | | / ___|_ _|  _ \| |    
 | | | |  _| |  _ \| |  / _ \ \| || |  _ | || |_) | |    
 | |_| | |___| |_) | | / ___ \  | || |_| || ||  _ <| |___ 
 |____/|_____|____/___/_/   \_\_|\_| \____|___|_| \_\_____|
                                              by Astral
ASCII

if [ osCheck $1 ]; then
    if [[ "$(id -u)" -ne 0 ]]; then
        echo "Por favor, execute como root (use sudo)."
    else 
        read -p "Digite a prioridade do Plymouth (ex: 100): " priority < /dev/tty
        
        # Registra o novo tema nas alternativas do Debian
        sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/debian-girl/debian-girl.plymouth $priority
        
        # Define o tema ativo e seleciona no menu interativo (opcional)
        sudo update-alternatives --config default.plymouth
        
        # Atualiza o arquivo de boot initramfs
        echo "Atualizando initramfs..."
        sudo update-initramfs -u
        
        echo "Tema Debian Girl configurado e instalado com sucesso!"
    fi
else 
    echo "Por favor, execute em um sistema GNU/Linux."
fi
