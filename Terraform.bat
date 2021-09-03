
 @echo off
 echo "Downloading Latest_Version_Terraform
powershell -Command "Invoke-WebRequest https://releases.hashicorp.com/terraform/1.0.5/terraform_1.0.5_windows_amd64.zip -OutFile Terraform.zip"


echo "Unzipping File"
powershell -Command "Expand-Archive Terraform.zip -DestinationPath C:\Users\Phocas\Desktop"

echo "Copy File to Final Destination"
COPY "C:\Users\Phocas\Desktop\terraform.exe" "C:\Program Files\Terraform"

echo "delete .exe from Desktop"
del "C:\Users\Phocas\Desktop\terraform.exe"

echo "rename backup"
COPY "C:\Program Files\Terraform\terraform.exe" "C:\Program Files\Terraform\Terraform_Backups"
RENAME "C:\Program Files\Terraform\Terraform_Backups\terraform.exe" "Terraform_1.0.5.exe" 



pause
echo "Done!"
cls
pause
