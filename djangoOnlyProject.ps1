$folder = Read-Host "Enter the project name "
mkdir $folder
cd $folder
echo "Creating Virtual Environment"
python -m venv env
cd env/Scripts
.\activate
cd ../..
pip install django
django-admin startproject $folder
git init
New-Item .gitignore -Value "\env"
code .
echo "Exiting...."
Exit