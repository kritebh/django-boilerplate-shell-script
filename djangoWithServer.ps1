$folder = Read-Host "Enter the project name "
mkdir $folder
cd $folder
echo "Creating Virtual Environment"
python -m venv env
cd env/Scripts
.\activate
cd ../..
pip install django
$project = Read-Host "Enter the project name "
django-admin startproject $project
git init
New-Item .gitignore -Value "\env"
cd $project
python manage.py runserver