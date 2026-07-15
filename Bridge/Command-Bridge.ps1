#COMMAND v0.1
# Bridge Online

function Show-CommandBridge {
    Clear-Host
    $hour = (Get-Date).hour

    $greeting = if ($hour -lt 12) {
        "Good Morning"
    }

    elseif ($hour -lt 17) {
        "Good afternoon"
    }

    else {
        "Good evening"
    }

    $powerShellVersion = $PSVersionTable.PSVersion.ToString()
    $powerShellEdition = $PSVersionTable.PSEdition.ToString()

    $bridgeMessage = if($PSVersionTable.PSVersion.Major -lt 7){
       @(
            ""
            "WARNING"
            "COMMAND is running under Windows Powershell."
            "Powershell 7 is recommended."
            ""
       )
    }
    else {
        @(

            ""
            " $greeting, Captain."
            ""
            " Awaiting Orders...."
            ""
        )
    }

    $pythonVersion = try {
        (python --version 2>&1) -replace "Python ", ""
    }
    catch {
        "Unavailable"
    }
    $gitVersion = try{
        (git --version 2>&1) -replace "git version ", ""
    }
    catch {
        "Unavailable"
    }


    Write-Host ""
    Write-Host "========================================================================================"
    Write-Host "                            COMMAND FLAGSHIP                                            "
    Write-Host "========================================================================================"
    Write-Host ""
    Write-Host "  Captain        : Rodger Roberts"
    Write-Host "  Status         : ONLINE"
    Write-Host ""
    Write-Host "  PowerShell     : $powerShellVersion"
    Write-Host "  Edition        : $powerShellEdition"
    Write-Host "  Python         : $pythonVersion"
    Write-Host "  Git            : $gitVersion"
    Write-Host ""
    Write-Host "----------------------------------------------------------------------------------------"
    
    $bridgeMessage | ForEach-Object {
        Write-Host $_
    }

    Write-Host "========================================================================================"
    Write-Host ""

}
Show-CommandBridge