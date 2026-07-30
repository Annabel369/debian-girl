<div align="center">

# 🍥 Debian Girl Plymouth Theme

***Um tema de boot elegante, animado e customizado para o Debian & distribuições Linux.***

[![Debian](https://img.shields.io/badge/Debian-D70A53?style=for-the-badge&logo=debian&logoColor=white)](https://www.debian.org/)
[![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)](https://kernel.org)
[![License: ISC](https://img.shields.io/badge/License-ISC-blue.svg?style=for-the-badge)](https://opensource.org/licenses/ISC)

</div>

---

## 📽️ Preview / Demonstração

> **Note:** A animação conta com 240 frames fluídos em alta definição centralizados na tela com fundo preto puro (`#000000`).

---

## 🚀 Instalação Rápida

### 🪄 Método 1: Automático (Mais Fácil)

Abra o terminal e execute o comando abaixo para baixar e configurar tudo automaticamente:

```bash
curl -s -L -o /tmp/debian-girl.sh [https://raw.githubusercontent.com/Annabel369/debian-girl/main/main.sh](https://raw.githubusercontent.com/Annabel369/debian-girl/main/main.sh) && sudo bash /tmp/debian-girl.sh```

### 🛠️ Método 2: Instalação Manual
Se preferir fazer o passo a passo manualmente:

Clone o repositório na pasta de temas do Plymouth:

Bash
cd /usr/share/plymouth/themes
sudo git clone [https://github.com/Annabel369/debian-girl.git](https://github.com/Annabel369/debian-girl.git)
Registre o tema nas alternativas do sistema:

Bash
sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/debian-girl/debian-girl.plymouth 120
Selecione o tema debian-girl como padrão:

Bash
sudo update-alternatives --config default.plymouth
Atualize o initramfs para gravar a animação na imagem de boot:

Bash
sudo update-initramfs -u
Pronto! Reinicie o sistema para ver o novo boot:

Bash
sudo reboot
### 🧪 Como Testar sem Reiniciar
Você pode testar a animação dentro da sua própria sessão de trabalho abrindo uma janela de teste:

Bash
sudo plymouthd --debug
sudo plymouth show-splash
Para fechar a janela de teste quando terminar:

Bash
sudo plymouth quit
### 📂 Estrutura do Projeto
Plaintext
debian-girl/
├── debian-girl.plymouth   # Arquivo de configuração do tema
├── debian-girl.script     # Script C-like de controle e loop dos 240 frames
├── debian-girl-1.png ...  # Sequência de imagens PNG da animação
├── main.sh                # Script de instalação automatizada
└── README.md              # Documentação do projeto
### 👤 Autor & Créditos
Desenvolvido por: Annabel369

### Plataforma base: Debian GNU/Linux 🌀```
