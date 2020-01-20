#Windows Server 2019
#Windows 8
#Windows Server 2016
#Windows 10
#could make it fancy but not got to pactch right now..

$computer = Get-ADComputer -properties OperatingSystem -filter 'operatingsystem -like "*Windows Server 2019*" -or operatingsystem -like "*Windows 8*" -or operatingsystem -like "*Windows 10*" -or operatingsystem -like "*Windows Server 2016*"' 
$computer | Select-Object Name, OperatingSystem
