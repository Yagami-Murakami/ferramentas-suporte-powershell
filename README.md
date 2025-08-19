# ferramentas-suporte-powershell
Script PowerShell para ferramentas essenciais de suporte técnico
# 🔧 Ferramentas Essenciais de Suporte - Tuninho kjr

Script PowerShell profissional para técnicos de suporte com interface colorida e intuitiva.

## 🚀 Funcionalidades

### 🌐 **REDE**
- ✅ Exibir configurações de IP (ipconfig /all)
- ✅ Limpar cache de DNS (flushdns) 
- ✅ Liberar e renovar IP
- ✅ Redefinir configurações de rede (netsh winsock reset)
- ✅ Verificar tabela de MAC address (ARP -A)
- ✅ Imprimir rotas de rede (ROUTE PRINT)

### 👤 **USUÁRIOS E DOMÍNIO** 
- ✅ Verificar usuário de domínio

### 💾 **DISCO E SISTEMA**
- ✅ Limpar arquivos temporários
- ✅ Abrir limpeza de disco do Windows
- ✅ Verificar integridade dos arquivos (SFC /scannow)
- ✅ Verificar disco em busca de erros (CHKDSK)
- ✅ Reparar imagem do Windows (DISM)

### ⚙️ **OUTROS**
- ✅ Forçar atualização de políticas de grupo (gpupdate)

## 📦 Como Usar

### **Pré-requisitos**
- Windows 10/11
- PowerShell 5.1 ou superior
- Privilégios de administrador (para algumas funções)

### **Instalação**
1. Baixe o arquivo `TuninhoKjr-SupportTools.ps1`
2. Abra PowerShell como administrador
3. Execute: `Set-ExecutionPolicy RemoteSigned -Scope CurrentUser`
4. Navegue até a pasta do arquivo
5. Execute: `.\TuninhoKjr-SupportTools.ps1`

### **Uso**
- Digite o número da opção desejada
- Pressione Enter
- Siga as instruções na tela

## 🎨 Interface

- **Interface colorida** com cores específicas para cada opção
- **Headers visuais** para identificar qual comando está sendo executado
- **Feedback visual** com símbolos de status
- **Menu intuitivo** organizado por categorias

## ⚠️ Avisos Importantes

- Algumas funções requerem privilégios de administrador
- Comandos como SFC e DISM podem demorar muito tempo
- Sempre faça backup antes de usar ferramentas de reparo

## 🔧 Funcionalidades Técnicas

- Verificação automática de privilégios administrativos
- Limpeza segura de arquivos temporários
- Tratamento de erros
- Interface responsiva

## 📄 Licença

Este projeto está sob a licença MIT - veja o arquivo [LICENSE](LICENSE) para detalhes.

## 👤 Autor

**Tuninho kjr** - Especialista em Suporte Técnico e Cybersecurity

## 🤝 Contribuições

Contribuições são bem-vindas! Por favor:
1. Fork o projeto
2. Crie uma branch para sua feature
3. Commit suas mudanças
4. Push para a branch
5. Abra um Pull Request

## 📞 Suporte

Se encontrar problemas ou tiver sugestões:
- Abra uma [issue](../../issues)
- Entre em contato pelo GitHub

---
⭐ Se este projeto te ajudou, deixe uma estrela!
