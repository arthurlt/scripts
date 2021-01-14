if ((Get-NetAdapter -Name "Motherboard Port" | Select -ExpandProperty "VlanID") -eq 200) {
    Set-NetAdapter -Name "Motherboard Port" -VlanID 1 -Confirm:$false
    Write-Host -ForegroundColor:Green "Switching to ClearLink IT VLAN"
} else {
    Set-NetAdapter -Name "Motherboard Port" -VlanID 200 -Confirm:$false
    Write-Host -ForegroundColor:Red "Switching to Quarantine VLAN" 
}