$folder = Read-Host "Enter the folder name "
mkdir $folder
cd $folder
echo "Creating Virtual Environment"
python -m venv env
cd env/Scripts
.\activate
cd ../..
pip install django
$project = Read-Host -Prompt "Project Name "
django-admin startproject $project
git init
New-Item .gitignore -Value "\env"
code .
echo "Exiting...."
Exit

