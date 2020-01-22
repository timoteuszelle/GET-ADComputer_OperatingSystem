<#
#Get the AD Computer objects with the specified OS: 
#   Windows Server 2019
#   Windows Server 2016
#   Windows 10
#   Windows 8
#   "Whatever other version you like to find"
# -Filter 'operatingsystem -like "*Fill in the OS between the astrix*" -or' (use the or operator for more than one OS type)
#>
$computer = Get-ADComputer -properties OperatingSystem -filter 'operatingsystem -like "*Windows Server 2019*" -or operatingsystem -like "*Windows 8*" -or operatingsystem -like "*Windows 10*" -or operatingsystem -like "*Windows Server 2016*"' 
$computer | Select-Object Name, OperatingSystem
