<#
.SYNOPSIS
Creates bulk Active Directory users for lab testing

.DESCRIPTION
THis script creates multiple test user in AD for lab purposes
Modify the $Users array to match your naming convention

.AUTHOR
[Your Name/Credit]
#>

# Define users to create
$Users = @(
  @{FirstName="John"; LastName="Smith"; Department="Finance"},
  @{FirstName="Sarah"; LastName="Jones"; Department="HR"},
  @{FirstName="Joyce"; LastName="Jiang"; Department="IT"},
)
#prints text when complete
Write-Host "Starting AD user creation..." -ForegroundColor Green 

#Loop through each user and create
foreach ($User in $Users) {
  $Username = $User.FirstName.Substring(0,1).ToLower() + $User.LastName.ToLower()
  $DisplayName = $User.FirstName + " " + $User.LastName
  $Password = ConvertTo-SecureString "TempPassword123!" -AsPlainText -Force
  #prints text when complete in loop
  Write-Host "Creating user: $Username" -ForegroundColor Yellow

# This is a template - will need modification when AD is set up

<#

New-ADUser -Name $DisplayName -GivenName $User.FirstName - Surname $User.LastName `
-SamAccountName
$Username@mylab.local" `
-AccountPassword
$Password -Enbled $True
-Department
$User.Department


#>
}
#print when loop is finished
Write-Host "Sctipt template created. Update with actual AD commands when domain is ready." -ForegroundColor Cyan

