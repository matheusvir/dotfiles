# 🎨 Catppuccin Tmux Theme - Configuração

## ✨ Características do Tema

O tema **Catppuccin Mocha** foi instalado com as seguintes características:

✅ **Background Transparente** - Obedece o background do seu terminal
✅ **Plugins Incluídos**:
   - 📁 **Directory (CWD)** - Mostra o diretório atual
   - 🔗 **Session** - Exibe o nome da sessão atual
   - ⏰ **Date & Time** - Data e hora no formato brasileiro (DD/MM/AAAA HH:MM)

✅ **Visual Moderno** - Esquema de cores similar ao OneDark com paleta Catppuccin Mocha
✅ **Ícones Bonitos** - Usa Nerd Fonts para ícones elegantes

## 🚀 Como Ativar

1. **Recarregue o tmux**:
   ```bash
   tmux source ~/.tmux.conf
   ```

2. **Ou reinicie o tmux**:
   - Feche todas as sessões tmux
   - Abra uma nova sessão

## 🎨 Paleta de Cores Catppuccin Mocha

- **Base**: #1e1e2e (fundo principal)
- **Text**: #cdd6f4 (texto principal)
- **Blue**: #89b4fa (azul)
- **Green**: #a6e3a1 (verde)
- **Mauve**: #cba6f7 (roxo)
- **Yellow**: #f9e2af (amarelo)
- **Red**: #f38ba8 (vermelho)

## 📋 Módulos da Status Bar

### Lado Direito (status-right):
1. **📁 Directory** - Mostra o caminho atual
2. **🔗 Session** - Nome da sessão tmux
3. **⏰ Date/Time** - Data e hora (DD/MM/AAAA HH:MM)

### Customização Adicional

Se quiser adicionar mais módulos, você pode editar o arquivo `.tmux.conf`:

```bash
# Adicionar hostname
set -ag status-right "#{E:@catppuccin_status_host}"

# Adicionar usuário
set -ag status-right "#{E:@catppuccin_status_user}"

# Adicionar uptime
set -ag status-right "#{E:@catppuccin_status_uptime}"
```

## 🔧 Outras Opções de Flavors

Se quiser testar outras variantes do Catppuccin, edite no `.tmux.conf`:

```bash
set -g @catppuccin_flavor 'latte'     # Tema claro
set -g @catppuccin_flavor 'frappe'    # Tema escuro suave
set -g @catppuccin_flavor 'macchiato' # Tema escuro médio
set -g @catppuccin_flavor 'mocha'     # Tema escuro intenso (ATUAL)
```

## 🎯 Background Transparente

A configuração mais importante para manter o background transparente está em:

```bash
set -g @catppuccin_status_background "default"
```

**NÃO remova ou altere esta linha** se quiser manter a transparência!

## 📚 Documentação Completa

Para mais opções de configuração, visite:
- [Catppuccin Tmux GitHub](https://github.com/catppuccin/tmux)
- [Documentação Oficial](https://github.com/catppuccin/tmux/tree/main/docs)

## 🛠️ Troubleshooting

### Ícones não aparecem corretamente?
Instale uma Nerd Font:
```bash
# Exemplo com JetBrains Mono Nerd Font
# Já está no seu dotfiles: install_nerdfont_jbmono.sh
```

### Tema não carregou?
```bash
# Verifique se o tema foi clonado corretamente
ls -la ~/.config/tmux/plugins/catppuccin/tmux/

# Recarregue o tmux
tmux source ~/.tmux.conf
```

## 🎨 Alternativa: Tokyo Night

Se preferir o Tokyo Night (outro tema popular similar), você pode instalar com:

```bash
mkdir -p ~/.config/tmux/plugins
git clone https://github.com/janoamaral/tokyo-night-tmux.git ~/.config/tmux/plugins/tokyo-night-tmux
```

E adicionar no `.tmux.conf`:
```bash
run ~/.config/tmux/plugins/tokyo-night-tmux/tokyo-night.tmux
```

---

**Aproveite seu novo tema! 🎉**
