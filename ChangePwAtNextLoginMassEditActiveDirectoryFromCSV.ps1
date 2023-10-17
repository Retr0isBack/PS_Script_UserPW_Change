#Made by DD
#This Script is made to import usernames out of a given .csv file and either use UserPrincipalName or samAccountName to change the Setting ChangePasswortAtLogon to true for all users in the csv
#Due to UserPrincipalName apparently working more reliable then samAccountName, samAccountName is going to be in Comments going forward from this point.
#As found out to a later time samAccountName is probably a more convenient option in our case.



Import-Module ActiveDirectory


# Loopstart
# Import users from CSV
# in "" should be the filepath of the .csv

# FOR HERR HAEUSSLER - "Hier bitte noch den Dateipfad der .csv-Datei einfuegen und dann sollte alles startklar sein ;)



Import-Csv "C:\Users\dreher-d\OneDrive - fischer\Dokumente\Testmappe.csv" | ForEach-Object {



#Fill in Variable depending on the Usage of UserPrincipalName or samAccountName


#UserPrincipalName

# in "" should be the attribute name of the username row 
# $UserPrincipalName = $_."AffectedUser" 


# Force user to reset password at next logon. 
# Set-ADUser -Identity $UserPrincipalName -PasswordNeverExpires $false
# Set-AdUser -Identity $UserPrincipalName -ChangePasswordAtLogon $true
# Write-Host " AD Password has been reset for: "$UserPrincipalName


#samAccountName

# in "" should be the attribute name of the username row 
$samAccountName = $_."AffectedUser" 


# Force user to reset password at next logon. 
Set-ADUser -Identity $samAccountName -PasswordNeverExpires $false
Set-AdUser -Identity $samAccountName -ChangePasswordAtLogon $true
Write-Host " AD Password has been reset for: "$samAccountName




}
#Loopend
pause


#Dokumentation. Script is functional but needs to be executed by a Domain Administrator