$folder = Read-Host "Enter the folder name "
mkdir $folder
cd $folder
echo "Creating Virtual Environment"
python -m venv env
echo "Activating Virtual Environment"
.\env\Scripts\activate
pip install django
$project = Read-Host -Prompt "Project Name "
django-admin startproject $project .
git init
New-Item .gitignore -Value "\env"
pip freeze > requirements.txt
code .
echo "Exiting...."
Exit
