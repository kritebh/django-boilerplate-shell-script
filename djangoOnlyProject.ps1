$folder = Read-Host "Enter the project name (Defualt: config)"
if(!$folder) {$folder = "config"}
mkdir $folder

cd $folder
echo "Creating Virtual Environment"
python -m venv env
.\env\Scripts\activate
pip install django
django-admin startproject $folder .

New-Item .gitignore -Value "env/"
pip freeze > requirements.txt
deactivate

git init
#git add .
#git commit -m "Initial"

code .

echo "Exiting...."
Exit
