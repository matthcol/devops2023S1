# Powershell Tricks

## Activate display with Write-Debug

**Activate debug output:** 
$DebugPreference = "Continue"

**Disable debug output:**
$DebugPreference = "SilentlyContinue"

## Define prompt Powershell

function prompt() {
    return "# ";
}



