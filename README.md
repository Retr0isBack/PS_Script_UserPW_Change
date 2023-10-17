# PS_Script_UserPW_Change

Made by Daniel Dreher / Retr0isBack. This Script is free of use for whoever may want to use it. Reuploading this Script as your own is simply none of my concern so whoever wants to use this to beauty up their CV may do so. 



This Script was created in a successful attempt to force a huge amount of Active Directory accounts to change their passwort at the next login 
It does so by reading out samAccountName's from a .csv file and executes the whole script for each user in a specially named row. The row name can of course be changed and should then be changed in the script . 
There were two versions of this Script one using samAccountName and one using UserPrincipalName. They have been combined into one Script and as the samAccountName was more convenient to use , the UserPrincipalName part has been commented out.



As this is my first Powershell Script please have mercy if any procedures were unclean or overcomplicated as the main aspect responsible to measure the scripts success was , having it purpose work.
