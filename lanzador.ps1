# Logo VlezTech (1er Lanzamiento)
        Clear-Host
        $logo = @'
                                                                               
                 @@@@@@  @@@@@        @@@@@ @@@@@@@@@@@@@ @@@@@@@@@@@           
                 @@@@@@@  @@@@@       @@@@@ @@@@@@@@@@@@ @@@@@@@@@@@@           
                 @@@@      @@@@(      @@@@@       @@@@@     @@@@                
                 @@@@      ,@@@@      @@@@@      @@@@@      @@@@                
                 @@@@       ,@@@@     @@@@@     @@@@@       @@@@                
                 @@@@        (@@@@    @@@@@    @@@@@        @@@@                
                 @@@@@@@@@@@@ @@@@@   @@@@@   @@@@@         @@@@                
                 @@@@@@@@@@@@@ @@@@@  @@@@@  @@@@@          @@@@                
                 @@@@   @@@@@@@ @@@@@ @@@@@ @@@@@ @       @ @@@@                
                 @@@@ @@         @@@@@@@@@@(@@@@  @       @ @@@@                
                 @@@@ @@          @@@@@@@@@@@@@   @@@@@@@@@ @@@@                
                 @@@@  @      @@   @@@@@@@@@@@    @       @ @@@@                
                 @@@@    @@@@@      @@@@@@@@@     @       @ @@@@                
                 @@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@ @@@@                
                                                                               
'@

Write-Host $logo -ForegroundColor Cyan
Write-Host "Optimizador de Windows 11 | VlezTech" -ForegroundColor Green
Start-Sleep -Seconds 1
    
        # Revisar si el usuario ha ejecutado el script como administrador
        if (-Not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
            Write-Host "Ejecuta este script como administrador para poder continuar."
            Pause
        }

        # Si el script no se está ejecutando como administrador, relanzarlo automáticamente
        if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()
         ).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    
         Write-Host "Reiniciando el script como administrador..."
        Start-Process powershell -Verb RunAs -ArgumentList ('-ExecutionPolicy Bypass -File "' + $MyInvocation.MyCommand.Path + '"')
         exit
        }

        # Logo VlezTech (2º Lanzamiento)
        Clear-Host
        $logo = @'
                                                                               
                 @@@@@@  @@@@@        @@@@@ @@@@@@@@@@@@@ @@@@@@@@@@@           
                 @@@@@@@  @@@@@       @@@@@ @@@@@@@@@@@@ @@@@@@@@@@@@           
                 @@@@      @@@@(      @@@@@       @@@@@     @@@@                
                 @@@@      ,@@@@      @@@@@      @@@@@      @@@@                
                 @@@@       ,@@@@     @@@@@     @@@@@       @@@@                
                 @@@@        (@@@@    @@@@@    @@@@@        @@@@                
                 @@@@@@@@@@@@ @@@@@   @@@@@   @@@@@         @@@@                
                 @@@@@@@@@@@@@ @@@@@  @@@@@  @@@@@          @@@@                
                 @@@@   @@@@@@@ @@@@@ @@@@@ @@@@@ @       @ @@@@                
                 @@@@ @@         @@@@@@@@@@(@@@@  @       @ @@@@                
                 @@@@ @@          @@@@@@@@@@@@@   @@@@@@@@@ @@@@                
                 @@@@  @      @@   @@@@@@@@@@@    @       @ @@@@                
                 @@@@    @@@@@      @@@@@@@@@     @       @ @@@@                
                 @@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@ @@@@                
                                                                               
'@


# Ocultar errores
$ErrorActionPreference = "SilentlyContinue"

# Mostrar las opciones
Write-Host "`nSeleccione una opcion:" -ForegroundColor White
Write-Host "[1] Eliminar archivos temporales" -ForegroundColor Yellow
Write-Host "    Borra los archivos que ya no se usan de las aplicaciones" -ForegroundColor White
Write-Host "[2] Crear punto de restauracion" -ForegroundColor Yellow
Write-Host "    Crea una forma de restaurar el ordenador si algo falla"
Write-Host "[3] Salir" -ForegroundColor Red

# Salir sin seleccionar
Write-Host "`nPresione una tecla para seleccionar..." -ForegroundColor Cyan
$key = [System.Console]::ReadKey($true).Key

# Que hace cada número
switch ($key) {
    # Opción 1
    'D1' {
        Write-Host "`nEjecutando limpieza de archivos temporales..." -ForegroundColor Cyan
        try {
            & ".\optimizaciones\borrar_archivos_temporales.ps1"
        } catch {
            Write-Host "Error al ejecutar el script." -ForegroundColor Red
        }
    }
    # Opción 2
    'D2' {
        Write-Host "`nEjecutando creacion de punto de restauracion..." -ForegroundColor Cyan
        try {
            & ".\optimizaciones\crear_punto_de_restauracion.ps1"
        } catch {
            Write-Host "Error al ejecutar el script." -ForegroundColor Red
        }
    }
    # Opción 3
    'D3' {
        Write-Host "`nSaliendo..." -ForegroundColor Red
        exit
    }
    default {
        Write-Host "`nOpcion no valida. Saliendo..." -ForegroundColor Red
        exit
    }
}

Write-Host "`nPresione cualquier tecla para salir..." -ForegroundColor Yellow
[System.Console]::ReadKey($true) | Out-Null

# AÑADIR DENTRO DE # Que hace cada número PARA AÑADIR OTRO
#'D3' {
       # Write-Host "`nEjecutando optimizacion de servicios..." -ForegroundColor Cyan
       # try {
       #     & ".\optimizar_servicios.ps1"
       # } catch {
       #     Write-Host "Error al ejecutar el script." -ForegroundColor Red
       # }
#    }