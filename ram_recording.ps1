function ram_test () {

	$ram = Get-CimInstance Win32_OperatingSystem
	# $ram.TotalVisibleMemorySize 
	# $ram.FreePhysicalMemory

	$free_gb=$ram.FreePhysicalMemory / 1024 / 1024
	$total_gb=$ram.TotalVisibleMemorySize / 1024 / 1024
	$used_gb=$total_gb-$free_gb

	[PSCustomObject]@{
    	Timestamp = Get-Date
    	TotalGB   = $total_gb
    	FreeGB    = $free_gb
    	UsedGB    = $used_gb
	}
}

while ($true) {

	$starttime = get-date
	ram_test | Export-Csv test_ram_usage_29062026.txt -Append
	$endtime = get-date
	$secondstosleep = [int](60 - ($endtime - $starttime).TotalSeconds)
	if($secondstosleep -gt 0) {
    		start-sleep -seconds $secondstosleep
	}
}

