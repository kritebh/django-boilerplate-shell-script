$folder = Read-Host "Enter the project name (Default: config)"
if(!$folder) {$folder = "config"}
mkdir $folder
cd $folder
echo "Creating Virtual Environment"
python -m venv env
echo "Activating Virtual Environment"
.\env\Scripts\activate
pip install django
django-admin startproject $folder .

New-Item .gitignore -Value "env/"
pip freeze > requirements.txt

git init
code .
echo "Exiting...."
Exit
