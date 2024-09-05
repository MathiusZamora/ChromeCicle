function chromepath {
    return "C:\Program Files\Google\Chrome\Application\chrome.exe"
}

while ($true) {
    # Verifica si Chrome está en ejecución
    $chrome = Get-Process -Name chrome -ErrorAction SilentlyContinue
    
    # Si no está corriendo, inicia Chrome en modo kiosk
    if ($chrome -eq $null) {
        Start-Process (chromepath) --kiosk
    }
    
    # Espera 2 segundos antes de verificar de nuevo
    Start-Sleep -Seconds 2
}
