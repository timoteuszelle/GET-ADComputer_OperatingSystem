<#
Author: Tim Zelle
--
# Get the AD Computer objects with the specified OS: 
#   Windows Server 2019
#   Windows Server 2016
#   Windows 10
#   Windows 8 and 7 etc.
#   "Whatever other version you like to find, in the example use -notlike operator to find anything else than windows."
# -Filter 'operatingsystem -like "*Fill in the OS between the astrix*" -or' (use the or operator for more than one OS type)
#>
$computerw = Get-ADComputer -properties OperatingSystem -filter 'operatingsystem -like "*windows*"'
$computero = Get-ADComputer -properties OperatingSystem -filter 'operatingsystem -notlike "*windows*"'
$computerw + $computero | Select-Object Name, OperatingSystem >c:\temp\computerobjectsOStypes.txt
