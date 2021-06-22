$folder = Read-Host "Enter the project name "
mkdir $folder
cd $folder
echo "Creating Virtual Environment"
python -m venv env
echo "Activating Virtual Environment"
.\env\Scripts\activate
pip install django
$project = Read-Host "Enter the project name "
django-admin startproject $project .
git init
New-Item .gitignore -Value "\env"
python manage.py runserver 