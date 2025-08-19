# FERRAMENTAS ESSENCIAIS DE SUPORTE
# Criado por Tuninho kjr

function Show-Menu {
    Clear-Host
    Write-Host "================================================================" -ForegroundColor Cyan
    Write-Host "              FERRAMENTAS ESSENCIAIS DE SUPORTE" -ForegroundColor Cyan
    Write-Host "                   Criado por Tuninho kjr" -ForegroundColor Cyan
    Write-Host "================================================================" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "REDE" -ForegroundColor Yellow
    Write-Host "----------------------------------------------------------------" -ForegroundColor Yellow
    Write-Host "1  - Exibir configuracoes de IP (ipconfig /all)" -ForegroundColor Green
    Write-Host "2  - Limpar cache de DNS (flushdns)" -ForegroundColor Blue
    Write-Host "3  - Liberar e Renovar IP" -ForegroundColor Magenta
    Write-Host "4  - Redefinir configuracoes de rede (netsh winsock reset)" -ForegroundColor Red
    Write-Host "5  - Verificar tabela de MAC address na rede (ARP -A)" -ForegroundColor DarkGreen
    Write-Host "6  - Imprimir rotas apreendidas na rede (ROUTE PRINT)" -ForegroundColor DarkBlue
    Write-Host ""
    Write-Host "USUARIOS E DOMINIO" -ForegroundColor Yellow
    Write-Host "----------------------------------------------------------------" -ForegroundColor Yellow
    Write-Host "7  - Checar usuario de dominio" -ForegroundColor DarkMagenta
    Write-Host ""
    Write-Host "DISCO E SISTEMA" -ForegroundColor Yellow
    Write-Host "----------------------------------------------------------------" -ForegroundColor Yellow
    Write-Host "8  - Limpar arquivos temporarios" -ForegroundColor DarkYellow
    Write-Host "9  - Abrir a limpeza de Disco do Windows" -ForegroundColor Gray
    Write-Host "10 - Verificar a integridade dos arquivos (SFC /scannow)" -ForegroundColor DarkRed
    Write-Host "11 - Verificar o disco em busca de erros (CHKDSK)" -ForegroundColor DarkCyan
    Write-Host "12 - Reparar imagem do Windows (DISM)" -ForegroundColor White
    Write-Host ""
    Write-Host "OUTROS" -ForegroundColor Yellow
    Write-Host "----------------------------------------------------------------" -ForegroundColor Yellow
    Write-Host "13 - Forcar atualizacao das politicas de grupo (gpupdate)" -ForegroundColor Green
    Write-Host "0  - Sair" -ForegroundColor Red
    Write-Host ""
    Write-Host "================================================================" -ForegroundColor Cyan
}

function Execute-Option {
    param([string]$option)
    
    switch ($option) {
        "1" {
            Write-Host "`n=== EXECUTANDO OPCAO 1 ===" -ForegroundColor Green
            ipconfig /all
            Write-Host "`nConcluido!" -ForegroundColor Green
            Read-Host "Pressione Enter para continuar"
        }
        "2" {
            Write-Host "`n=== EXECUTANDO OPCAO 2 ===" -ForegroundColor Blue
            ipconfig /flushdns
            Write-Host "Cache de DNS limpo!" -ForegroundColor Blue
            Read-Host "Pressione Enter para continuar"
        }
        "3" {
            Write-Host "`n=== EXECUTANDO OPCAO 3 ===" -ForegroundColor Magenta
            Write-Host "Liberando IP..." -ForegroundColor Magenta
            ipconfig /release
            Write-Host "Renovando IP..." -ForegroundColor Magenta
            ipconfig /renew
            Write-Host "IP renovado!" -ForegroundColor Magenta
            Read-Host "Pressione Enter para continuar"
        }
        "4" {
            Write-Host "`n=== EXECUTANDO OPCAO 4 ===" -ForegroundColor Red
            netsh winsock reset
            Write-Host "Configuracoes redefinidas. REINICIE o computador!" -ForegroundColor Red
            Read-Host "Pressione Enter para continuar"
        }
        "5" {
            Write-Host "`n=== EXECUTANDO OPCAO 5 ===" -ForegroundColor DarkGreen
            arp -a
            Write-Host "`nTabela ARP exibida!" -ForegroundColor DarkGreen
            Read-Host "Pressione Enter para continuar"
        }
        "6" {
            Write-Host "`n=== EXECUTANDO OPCAO 6 ===" -ForegroundColor DarkBlue
            route print
            Write-Host "`nTabela de rotas exibida!" -ForegroundColor DarkBlue
            Read-Host "Pressione Enter para continuar"
        }
        "7" {
            Write-Host "`n=== EXECUTANDO OPCAO 7 ===" -ForegroundColor DarkMagenta
            whoami /all
            Write-Host "`nInformacoes do usuario exibidas!" -ForegroundColor DarkMagenta
            Read-Host "Pressione Enter para continuar"
        }
        "8" {
            Write-Host "`n=== EXECUTANDO OPCAO 8 ===" -ForegroundColor DarkYellow
            Write-Host "Limpando arquivos temporarios..." -ForegroundColor DarkYellow
            Remove-Item -Path "$env:TEMP\*" -Recurse -Force -ErrorAction SilentlyContinue
            Remove-Item -Path "C:\Windows\Temp\*" -Recurse -Force -ErrorAction SilentlyContinue
            Write-Host "Arquivos temporarios limpos!" -ForegroundColor DarkYellow
            Read-Host "Pressione Enter para continuar"
        }
        "9" {
            Write-Host "`n=== EXECUTANDO OPCAO 9 ===" -ForegroundColor Gray
            Write-Host "Abrindo Limpeza de Disco..." -ForegroundColor Gray
            cleanmgr
            Write-Host "Ferramenta aberta!" -ForegroundColor Gray
        }
        "10" {
            Write-Host "`n=== EXECUTANDO OPCAO 10 ===" -ForegroundColor DarkRed
            Write-Host "ATENCAO: Isso pode demorar varios minutos..." -ForegroundColor DarkRed
            sfc /scannow
            Write-Host "Verificacao concluida!" -ForegroundColor DarkRed
            Read-Host "Pressione Enter para continuar"
        }
        "11" {
            Write-Host "`n=== EXECUTANDO OPCAO 11 ===" -ForegroundColor DarkCyan
            $drive = Read-Host "Digite a letra da unidade (ex: C)"
            Write-Host "Executando CHKDSK..." -ForegroundColor DarkCyan
            chkdsk "$drive`:" /f /r
            Write-Host "Verificacao concluida!" -ForegroundColor DarkCyan
            Read-Host "Pressione Enter para continuar"
        }
        "12" {
            Write-Host "`n=== EXECUTANDO OPCAO 12 ===" -ForegroundColor White
            Write-Host "ATENCAO: Isso pode demorar MUITO tempo..." -ForegroundColor White
            DISM /Online /Cleanup-Image /RestoreHealth
            Write-Host "Reparo concluido!" -ForegroundColor White
            Read-Host "Pressione Enter para continuar"
        }
        "13" {
            Write-Host "`n=== EXECUTANDO OPCAO 13 ===" -ForegroundColor Green
            gpupdate /force
            Write-Host "Politicas atualizadas!" -ForegroundColor Green
            Read-Host "Pressione Enter para continuar"
        }
        "0" {
            Write-Host "`nEncerrando programa..." -ForegroundColor Red
            Write-Host "Obrigado por usar o Tuninho kjr!" -ForegroundColor Red
            Start-Sleep -Seconds 2
            exit
        }
        default {
            Write-Host "`nOpcao invalida!" -ForegroundColor Red
            Read-Host "Pressione Enter para continuar"
        }
    }
}

# Loop principal
do {
    Show-Menu
    Write-Host "`nDigite o numero da sua opcao e pressione Enter: " -ForegroundColor Cyan -NoNewline
    $choice = Read-Host
    Execute-Option $choice
} while ($choice -ne "0")
