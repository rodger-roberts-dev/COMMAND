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
    Write-Host "  Python         : $pythonVersion"
    Write-Host "  Git            : $gitVersion"
    Write-Host ""
    Write-Host "----------------------------------------------------------------------------------------"
    Write-Host " $greeting, Captain."
    Write-Host ""
    Write-Host " Awaiting Orders...."
    Write-Host "========================================================================================"
    Write-Host ""

}
Show-CommandBridge